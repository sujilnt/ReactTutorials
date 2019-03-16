#!/usr/bin/perl
# counter2.pl

use 5.18.0;
use warnings;
use IO::File;

my $fileName = "linesfile.txt";

# open the file - with simple error reporting

my $fh = IO::File->new($fileName,"r");
if(!$fh){
  print("Cannot open $fileName ($!)\n");
  exit;
}
# count the lines 

my $count = 0;
while($fh->getline){
    $count++;
}
# close and print 
$fh->close;
print("There are $count lines in $fileName");
