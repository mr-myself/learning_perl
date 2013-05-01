#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

# indexは先頭から数える
my $stuff = "Hello, world";
my $where = index($stuff, "wor");
say $where; #=> 7

# rindexは末尾から数える
my $last_slash = rindex("/etc/passwd", "/");
say $last_slash; #=> 4

my $mineral = substr("Fred J. Flintstone", 8, 5);
say $mineral; #=> "Flint"

my $long = "some very very long string";
say index($long, "1"); #=> -1 ... 文字列が見つからなければ-1を返す
say index($long, "l"); #=> 15

my $right = substr($long, index($long, "l"));
say $right; #=> "long string"

# 元の文字列を置換できる
my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye";
say $string; #=> "Goodbye, world!"

substr($string, -10) =~ s/world/momomo/g;

say my $money = sprintf "%.2f", 2.49997; #=> 2.50

say "-------------------";
my @some_numbers = (1, 3);
#my @result = sort by_number @some_numbers;
print "result is ....";

=pod
# これなんでエラーになるのかわからない
sub by_number {
    my ($a, $b) = @_;
    say $a;
    if( $a < $b ){
        -1
    } elsif ($a > $b){
        1
    } else {
        0
    }
}
=cut
print "\n";
my %score = ("barnery" => 195, "fred" => 205, "dino" => 30, "bamm-bamm" => 195,);
say my @winners = sort by_score keys %score;

sub by_score { $score{$b} <=> $score{$a} }

