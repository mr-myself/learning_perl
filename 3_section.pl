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
print $#fred."\n"; #これは最後の要素のインデックスを取得する方法

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
#print $di."\n"; #これundefやから一応エラー出る
#代入対象になる変数の個数と値の個数が一致しない場合にはundefが余ったところに入る

my @tiny = ();
my @rocks = qw/ bedrock slate lava /;
my $dino = "granite";
my @quarry = (@rocks, "crushed rock", @tiny, $dino);
print join("\n", @quarry); # ひとつうえのとこで@tinyによってundefは挿入されない

my @array = 5..9;
my $fred =  pop(@array); #9
my $barney = pop @array; #8
pop @array; # 無効コンテキスト。ただ最後の要素を捨てたいだけなときにやるやり方
print join("\n", @array); #=> 5, 6

push @array, 22;
print join("\n", @array); #=> 5, 6, 22
print "\n--------------------\n";
my @others = 1..10;
#print join("\n", @others);
push @array, @others;
print join("\n", @array);

# shiftとunshiftは同様に先頭のものに対して作用する

my @array2 = qw/ as df gh jk l p/;
my @removed = splice @array2, 2; # 指定した位置以降の要素をすべて取り除く
print join("\n", @array2); #=> "as df"

{
    my @array3 = qw( 1 2 3 4 5 );
    my @removed3 = splice @array3, 1, 2; # 第2引数が開始位置、第3引数は長さ
    print join("\n", @array3); #=> 1, 4, 5
}

# ちなみに第4引数にスカラーあるいはリスト（配列）を指定したら、
# 取り除くと同時に配列に挿入できる。要素数は必ずしも一致しなくても良い。

# 配列の要素をつかう
my @testes = qw/ test tes tt /;
print "\n".$testes[1]."\n"; #=> "tes"

print "\n--------------------------\n";

# 配列やリストの全体を処理
foreach my $testes (@testes) {
    print $testes."\n"; #=> "test tes tt"
}

foreach(@testes){ print $_."\n"; } # これでも結果一緒

# ループの中で制御変数に変更を加える
foreach(@testes){
    $_ = "まじか$_";
    $_ .= "\n";
}
print join("\n", @testes); # すべての要素の前に”まじか”、後ろに改行が挿入される

$_ = "こんなんできるんや！(・∀・)\n";
print; #=> "こんなんできるんや！(・∀・)"

{
    my @rocks = qw/ bedrock slate rubble granite /;
    while( my( $index, $value ) = each @rocks ){
        say "$index: $value";
    }
}
# 受け取る変数２つ用意したらインデックスと値を受け取れる

foreach my $index2 ( 0..$#rocks ){ # 「$#」は最後の要素のインデックスを取得する方法
    print "$index2: $rocks[$index2]\n";
}

while( my $index3 = each (@rocks)){
    print $index3."\n";
} # インデックスのみ出力されるから値が欲しければ変数２つ用意しなアカンっぽ

# コンテキストを意識する、考える
my @people = ("おれ", "おまえ", "あんた");
print my @sorted = sort @people; #=> あんたおまえおれ
print @people + 42; #=> 45

my @family = qw( ドラえもん のびた しずか すねお );
print "How many families do you have?\n";
print "I have", @family, "families!\n";
print "I have", scalar @family, "families!\n"; # これでちゃんと要素数４が表示される
print "I have", $#family, "families!\n"; # 3ってでる。最後のインデックスやからしゃぁないけど


