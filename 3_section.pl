#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;

# リストはデータ。配列はリストを格納する変数。
my @fred;
$fred[0] = 1;
$fred[2] = 99;
print $fred[0]."\n";
print $#fred."\n"; #これは最後の要素を取得剃る方法

my @num = (3..9); #範囲演算子。リスト
print @num;

my @names = qw( fred barney betty wilma dino );
foreach(@names){
    print $_."\n";
}

print join("\n", @names); #これがいっちゃん楽なやり方っぽい

#リスト代入
(my $f, my $ba, my $di) = ("flintstone", "rubble", undef);
print $f."\n";
print $ba."\n";
print $di."\n"; #これundefやから一応エラー出る
#代入対象になる変数の個数と値の個数が一致しない場合にはundefが余ったところに入る


