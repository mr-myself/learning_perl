#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $original = "Fred ate 1 rib";
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
say $copy;

(my $poppy = $original) =~ s/\d+ ribs?/10 ribs/;
say $poppy;

# このやり方が一番スマートっぽ。
my $poppyco = $original =~ s/\d+ ribs?/9 ribs/r;
say $poppyco;

# ///rは元の文字列は変更せずに置換の結果を値として返す
# ///gはすべての箇所変更

my $a = "I saw Barney with Fred.";
my $b = $a =~ s/(fred|barney)/\U$1/rgi; # iは大文字小文字を区別しない
say $b;
# \Uはすべて大文字、\Lはすべて小文字、\u, \lは最初の1文字だけ。これらを組み合わせることも可能

my @fields = split /:/, "abc:def:h:g:a";
say Dumper(@fields);
my $y = join "-", @fields;
say $y; #=> abc-def-h-g-a

# splitはリストつくってjoinはスカラーに作り直すわけです

### 欲張りな演算子 ###
my $c = "fred and barney went bowling last night";

# .+やと全部みてからもどっていって次のマッチをさがすからバグる。
# .+?で順に1文字ずつ見に行かせるのが正しい。p200に詳しく書いてある。

# //mは改行文字を見つけても全部マッチしに行く


