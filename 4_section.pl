#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;

sub marine {
    my $n += 1;
    print "Hello, sailor number $n!\n";
}

&marine;
# Perlも最後の値が戻り値になる

sub max {
    my ($n, $m) = @_;
    if($n > $m){$n}else{$m};
}

print &max(5, 10)."\n";

sub maximum {
    my($max_so_far) = shift @_;
    foreach(@_){
        if($_ > $max_so_far){
            $max_so_far = $_;
        }
    }
    $max_so_far;
}

my @array = (1..19);
print &maximum(@array)."\n";

# グローバル変数の宣言
our $test = "test!";
print $test."\n";

my @names = qw/ ore omae you they /;
print my $result = &which_element_is('you', @names);
print "\n";
sub which_element_is {
    my($what, @array) = @_;
    foreach (0..$#array) {
        if($what eq $array[$_]) {
            return $_;
        }
    }
    -1;
}

# stateでサブルーチンの処理が終わってから次に呼び出すまでの間、値を保持
sub marine2 {
    state $n = 0;
    $n += 1;
    print "number $n\n";
}
&marine2;
&marine2;
