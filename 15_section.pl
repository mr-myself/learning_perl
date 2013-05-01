#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";


my $test = "AFred";
given( $test ){
    when('Fred'){ say 'name is Fred'; continue}
    when( /AFred/ ){ say 'name starts with fred'; continue}
    when( /fred/i ){ say 'name has fred in it';}
    default  { say 'I dont see a fred';}
}
