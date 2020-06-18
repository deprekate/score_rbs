#!/usr/bin/perl
use Data::Dumper;


my %nucs;
open(INFILE, $ARGV[0]) or die();
while(<INFILE>){
	next if m/^>/;
	chomp();
	my @line = split(//);
	foreach my $c (@line){
		$nucs{uc($c)}++;
	}
}
print $ARGV[0];
print "\t";
print (($nucs{'G'}+$nucs{'C'})/($nucs{'G'}+$nucs{'C'}+$nucs{'A'}+$nucs{'T'}));
print "\n";
