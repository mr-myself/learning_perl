#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
#use diagnostics;

my $a = "a";
my $b = "b";
print $a.$b; #文字列連結

#my $c = "123test";
#print $c * 3;
# use diagnostics でより詳細なエラー文言を見れる

my $d = 5;
$d *= 8;
my $e = 'renketsu';
$e .= 'str';
print $d."\n";
print $e."\n";

#下記はuse stringとか使ってなければ空文字が代入される
#my $f = "fred ate a $meal";
#print $f."\n";

#変数名の明確化
my $g = "asaren";
print "I just joined ${g}practice\n";

#文字列の比較と数値の比較が違う
# == eq, != ne, < lt, > gt, <= le(less than or equal to), >= ge(greater than or equal to)

my $name = "keisuke";
if ($name gt 'fred') {
    print "$name comes after than 'fred' in sorted order.\n";
}else{
    print "あれ？";
}

# 値が数値の場合、0はfalseになる。文字列は空文字がfalse
my $zero = 0;
if ($zero){
    print $zero;
}else{
    print "$zero is false.\n";
}

# if文での否定演算子の使い方
if (! $zero){
    print "zero is false again.\n";
}

my $still_true = !! 'Fred';
my $still_false = !! '0';
print $still_true."\n"; # 1を返してくる
print $still_false."\n";

#print $still_false if $still_false == false;
# if文とかいがいでのfalse判定がどうやるかわからん。

# chompは改行1つしか削除しないの注意かな
#chomp(my $text = <STDIN>);
#print $text."\n";

{
    my $count = 0;
    while($count < 10) {
        $count += 1;
        print "count is now $count\n";
    }
}

#print $count; #これはスコープから外れるってわけ

my $try = undef;
print $try + 12; #undefは数字やとゼロとされる。文字列やったら空文字列扱い

defined($try); #undefなら偽、それ以外なら真を返す



## 練習問題 ##

#1
my $half = 12.5;
print $half * 2 * 3.141592654;
