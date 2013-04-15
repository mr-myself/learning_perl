#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

### 正規表現 ###
=pod
if(/\p{Space}/){
    say "空白";
}

if(/\p{Digit}/){
    say "数字";
}

if(/\p{AHex}\p{AHex}/){
    say "二桁の数字";
}

# 大文字のPは属性の否定
if(/\P{Space}/){
    say "スペース以外";
}
=cut

# *は直前のものに0回以上マッチ。.は任意の一文字。+は直前に置かれたものに1回以上マッチ
# ?は直前のものが1回マッチするかしないかにマッチ
# ()でグループ化

my $seiki = "abba";
if($seiki =~ /(.)\1/){
    say "its match for $1";
}

# [文字クラス]ってかんじ
# ショートカットもある。\dは数字のみ。[0-9]と同意。\sはスペース。
# 文字クラスの先頭にキャレット(^)を置くと、その文字の否定になる
# \D, \W, \Sも同様に否定

