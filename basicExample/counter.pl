#!/usr/bin/perl
 
use 5.18.0;
use warnings;
# using a scalar variable for the file.
my $fileName = "linesfile.txt";

open(FH,$fileName); # open the file
my @lines = <FH>;  # read the file 
close(FH);   #close the file
my $count =scalar @lines;
say "There are $count lines in $fileName";




