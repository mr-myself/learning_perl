#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $fred = "fredさん";
unless($fred =~ /mazisuka/){
  say "ふれっどさんじゃないよ";
}

my ( $j, $i ) = ( 2, 9 );
until($j > $i){
    say $j;
    $j *= 2;
}

say "$j is not a negative number" if $j > 0;

my $bredrock = 42;
$bredrock++;
say $bredrock;

my @people = qw{ fred barney wilma dino };
my %count;
$count{$_}++ foreach @people;
say Dumper( \%count );


for( $i = 1; $i <= 10; $i++ ){
    say "this is $i";
}

for (1..10){
    say "I can count to $_!";
}

if($bredrock){
#    last;
}
# lastはreturnと同じなわけね。そこで終了。

my @words = qw{ fred barney pebbles dino wilma betty };
my $errors = 0;

=pod
foreach (@words){
    print "Type the word '$_': ";
    chomp(my $try = <STDIN>);
    if($try ne $_){
        say "Sorry - Thats not right";
        $errors++;
        redo;
    }
}
=cut

sub test{
    my $location = "home";
}

say my $test_var = &test ? "home" : "popopo";

my $someone = "re";
my %last_name;
my $last_name = $last_name{$someone} || '(No last name)';
say $last_name;

# defined-or演算子//
$last_name = $last_name{$someone} // '(No last name second ver)';
say $last_name;

# defined-orの効力
foreach my $try ( 0, undef, '0', 1, 25 ){
    say "Trying [$try] -->";
    my $value = $try // 'default';
    say "\tgot [$value]";
}
# ||でやると、偽の値すべてが再代入されてしまう（0など）が、//でやると未定義だけ再代入される

my $name;
printf "%s", $name // '';


# イケメン代入方法
my ($m, $n) = (1, 5);
($m < $n) && ($m = $n); # &&は左側が真なら右を評価するという性質を利用する
say $m, $n; #=> 5 5

my $x = 0;
($m < $n) ? ($m = $n) : ($m = $x);
say $m; #=> 0
say $n; #=> 5
say $x; #=> 0
