#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

#system 'ls -l $HOME';
unless (system 'date') {
    say "We gave you a date, OK!";
};

exec 'date';

#chomp(my $no_newline_now = 'date');
#print "A moment ago, it was $no_new_line, I think\n";
