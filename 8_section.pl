#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $url = "http://test.com";
if($url =~ m%http://%){
    say "マッチしてますやん(・∀・)";
}
# という感じでm//で演算子でパターンマッチできる

# 改行文字も含めてマッチする場合には//sをつける。
# //xとするとパターンの中に任意の空白文字を追加できるようになる。読みやすくなる。
# //iは大文字と小文字を区別せずにマッチする
# \Aは先頭マッチ、\zは末尾マッチ

# キャプチャする際、カッコで囲んだらそれが見つかっても見つからなくても「$番号」に代入する。それを避けるのが(?:)。

my $names = 'Fred or Barney';
if($names =~ m/(\w+) (and|or) (\w+)/){
    say "I saw $1 and $2"; #=> "I saw Fred and or"
}
# これは意図した結果じゃない。()の2個めを$2が取得してしまっている

if( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ){
    say "I saw $+{name1} and $+{name2}"; #=> I saw Fred and Barney
}
# (?:)でそのカッコがグループ化だけを行なっていることを表す。
# ?<LABEL>PATTERNでラベル付きでマッチできる。その値を得るのは上記の通り。

if("Hello there, neighbor" =~ /\s(\w+),/){
    say "That was ($`)($&)($')"; #=> That was (Hello)( there,)( neighbor)
}


