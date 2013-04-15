#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

### ハッシュ ###

# keyは常に文字列に変換される


my %some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello');
#say %some_hash;
my @any_array = %some_hash;

my %inverse_hash = reverse %some_hash;
# これで値とキーの入れ替えができ、値をキーにできる。ただ、値がユニークな場合にのみ限る。

# リストでハッシュ作るとどれがキーで値かわかりにくいので下記
my %last_name = (
    'kei' => 'ore',
    'keisuke' => 'koremoore',
    '圭亮' => 'kanji',
);
# この書き方をする場合、左側（キー）は自動的にクォートするからクォート記号いらない
print Dumper(\%last_name);

my %hash = (a => 1, b => 2, c => 3);
my @k = keys %hash;
my @v = values %hash;
say @k; #=> cab
say @v; #=> 312
# スカラーコンテキストではこれらのペアの個数を返す
my $count_hash = keys %hash;
say $count_hash; #=> 3

if(%hash){ #=> ハッシュをブール値として使用
    say "That was a true value!";
}

while( my($key, $value)= each %hash ){ # eachは実際このくらいしか実用的じゃないっぽ
    say "$key => $value";
}

if(exists $hash{'c'}){
    say "あるよー！！！";
}

delete $hash{'a'};
print Dumper(\%hash);

# %ENVにいろいろ情報が入ってる
say "PATH is $ENV{PATH}\n";


