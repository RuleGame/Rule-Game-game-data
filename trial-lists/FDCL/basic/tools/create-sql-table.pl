#!/usr/bin/perl

use strict;

open(F, "<master.csv");

my $good=0;
my $bad=0;

my @modifier = `cat /opt/w2020/game-data/modifiers/FDCL/basic.csv`;
my ($modHeader,$modData) = @modifier;

my %haveStarted = ();

open(G, ">master.sql");
print G "CREATE TEMPORARY TABLE IF NOT EXISTS master(trialListId varchar(128), r int, rule varchar(128));\n";
my $row = 0;
    

foreach my $line (<F>) {
    $line =~ s/^\s+//;
    $line =~ s/\s+$//;
    $line =~ s/#.*//;
    if ($line eq '') { next; }
    my ($trial,$rule) = split( /,/, $line);
    if ($trial eq '') { next; }
    # print "Trial=$trial; rule=$rule\n";
    
    if ($haveStarted{$trial}) {
    } else {
	$row = 0;
	$haveStarted{$trial} = 1;
    }

    my $trialListId = "basic-$trial";
    
    print G "insert into master values('$trialListId',$row,'$rule');\n";
    $row ++;

}

close(F);
close(G);

#print "Found rules for $good cells, failed to find rules for $bad cells\n";
