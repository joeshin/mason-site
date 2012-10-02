package MHQ::Mason;
use Poet qw($conf $poet);
use Poet::Moose;

extends 'Poet::Mason';

override 'get_plugins' => sub {
    my @extra_plugins;
    if ( $conf->is_development ) {
        push( @extra_plugins, 'TidyObjectFiles' );
    }
    return ( super(), @extra_plugins );
};

1;
