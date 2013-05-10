#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
use Data::Dumper;

# リストの中からいくつかの要素を抽出する　
my @names = qw{ zero one two three four five six seven eight nine };
my @numbers = ( @names )[9, 0, 2, 1, 0 ]; # 配列スライス
#say "Bedrock @numbers"; #=> "Bedrock nine zero two one zero"
# $は要素を1個だけ取り出す、@は要素のリストを取り出す

my @item;
my $new_home_phone = 555-6099;
my $new_address = "99380 RED ROCK WEST";
@item[2, 3] = ($new_address, $new_home_phone);
# これは($itme[2], $item[3])への代入と同じだが、スライスのほうがコンパクトで効果的


my %score = +(
    barney => 90,
    fred => 81,
    dino => 11
);
warn Dumper(\%score);
my @three_scores = @score{ qw/ barney fred dino / };

# Perlではドル記号は何かが1つだけあることを表し、アットマークは要素のリストがあることを表し、パーセントはハッシュ全体があることを表す

# evalは通常なら致命的になるはずのエラーが発生するとすぐにブロック全体の実行をやめて、プログラムの残りの部分の実行を続けます
# evalは実際には制御構造ではなく式なのでセミコロンが必要

# evalはエラーをキャッチするとundefを返す。デフォルト値のセットも可能
my $barney = eval{ 0 / 0 } // 'NaN';
# エラーは$@で受け取る

# evalの代わりにTry::Tinyを使う手もある
# autodieも超有効（p357）


my @odd_numbers;
foreach(1..1000){
    push @odd_numbers, $_ if $_ % 2; # 2で割りきれて0になると0は偽なので。
}
# これを書き換えると・・↓

my @odd_number_re = grep { $_ % 2} 1..1000;
#print Dumper(@odd_number_re);



# mapで処理
my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
my @formatted_data = map { $_ * 2 } @data;

use List::Util(qw/ sum  max maxstr /);
my $total = sum(1..1000);
say $total;

my $max = max(1312, 435, 77, 99);
say $max;

# List::Utilのその他のメソッド...shuffle, maxstr
# List::MoreUtilはもっといろいろ使える(p363)

