#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;
use Data::Dumper;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
use Perl6::Say;
use File::Basename qw/ basename /;
use Path::Class;
use DBI;
use DateTime;

my $name = "/usr/local/bin/perl";
my $basement = $name =~ s/.*\///rs;
say $basement;

my $dir_name = "/usr/local/bin/perl";
my $base = basename $dir_name;
say $base;

my $dir = dir( qw(Users fred lib) );
my $subdir = $dir->subdir('perl5');
say $subdir; #=> Users/fred/lib/perl5
my $parent = $dir->parent;
say $parent;


# DBI(Database Interface) - - DBD(Database Drivier)
my $db_name = "learning_perl.sqlite3";
my $username = "root";
my $password = "";

my $data_source = "dbi:SQLite:dbname=$db_name";
my $dbh = DBI->connect($data_source, $username, $password);

my $sth = $dbh->prepare("SELECT * FROM tests");
$sth->execute();
my @row_ary = $sth->fetchrow_array;
$sth->finish;

$dbh->disconnect();


my $dt = DateTime->from_epoch( epoch => time );
printf '%4d%02d%02d', $dt->year, $dt->month, $dt->day;
