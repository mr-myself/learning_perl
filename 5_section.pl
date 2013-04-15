#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;

=pod
print chomp( my $line = <STDIN> );
while(<STDIN>){
    print "I saw $_";
}
# foreachはループの場合には実行前にまずすべての入力を読み込んでしまうことに注意
=cut

my @array = qw/ tes test tres /;
print "@array\n"; # こう書いたら要素と要素の間に空白入れてくれる

my $a = "hoi!";
my $b = "Joy!";
printf "Hello, %s and %s", $a, $b; # %の後ろはそれぞれどういったフォーマットで出力したいかにより変わる

my @items = qw( wilma dino pebbles );
my $format = "The items are:\n".("%10s\n" x @items);
printf $format, @items;

say "pritn";
say "pritn";
