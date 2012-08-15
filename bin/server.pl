#!/usr/local/bin/csperl -w
use Poet::Script qw($poet $conf :file);
use Server::Control::Starman;
use strict;
use warnings;

mkpath( $_, 0, 0775 ) for ( $poet->data_dir, $poet->logs_dir );

Server::Control::Starman->handle_cli(
    name    => 'mhq',
    options => {
        'error_log' => $poet->logs_path('error.log'),
        'pid'       => $poet->data_path('starman.pid'),
        'port'      => $conf->get_or_die('server.port'),
        'workers'   => '10',
    },
    app_psgi => $poet->bin_path('app.psgi'),
    @_
);

=pod

=head1 NAME

Stop/start MHQ server

=head1 SYNOPSIS

   server.pl -k start|stop|restart|ping
   server.pl -h

=head1 OPTIONS

 -k, --action        Specify action - start, stop, restart, ping
 -q, --quiet         Show only errors and warnings
 -v, --verbose       Show verbose output

__END__

