#!/usr/bin/perl
use Poet::Script qw($conf $poet :file);
use MHQ::Mason;
use IPC::System::Simple qw(run);
use warnings;
use strict;

my $comps_dir = $poet->comps_dir;
my $obj_dir   = $poet->data_path("obj");
rmtree($_)
  foreach ( $obj_dir, "$obj_dir.orig", "$obj_dir.new", "$comps_dir.tidied",
    "$comps_dir.untidied" );
mkpath( $obj_dir, 0, 0775 );

sub compile_comps {
    my $comp_root = shift;
    my $mason     = MHQ::Mason->new( comp_root => $comp_root );
    my @comps     = $mason->all_paths();
    foreach my $comp (@comps) {
        $mason->load($comp);
    }
}

run("cp -R $comps_dir $comps_dir.tidied");
run("cp -R $comps_dir $comps_dir.untidied");
run("find $comps_dir.tidied -type f | xargs tidyall");

compile_comps("$comps_dir.tidied");
run("mv $obj_dir $obj_dir.orig");
compile_comps("$comps_dir.untidied");
run("mv $obj_dir $obj_dir.new");

system(
    "diff -ur --ignore-matching-lines=/Users/swartz/git $obj_dir.orig $obj_dir.new"
);
