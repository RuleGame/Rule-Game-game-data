#!/usr/bin/perl

use strict;

open(F, "<master.csv");

my $good=0;
my $bad=0;

my @modifier = `cat /opt/w2020/game-data/modifiers/FDCL/basic.csv`;
my ($modHeader,$modData) = @modifier;

my %haveStarted = ();


foreach my $line (<F>) {
    $line =~ s/^\s+//;
    $line =~ s/\s+$//;
    $line =~ s/#.*//;
    if ($line eq '') { next; }
    my ($trial,$rule) = split( /,/, $line);
    if ($trial eq '') { next; }
    # print "Trial=$trial; rule=$rule\n";
    my $r="FDCL/basic/$rule";
    my $ruleFilePath = "/opt/w2020/game-data/rules/$r.txt";

    my $trialPath = "../basic-$trial.csv";
    
    if (-f $ruleFilePath) {
	$good++;

	if ($haveStarted{$trial}) {
	    open(G, ">> $trialPath");
	} else {
	    open(G, "> $trialPath");
	    my $header = "rule_id,$modHeader";
	    print G $header;
	    $haveStarted{$trial} = 1;
	}
	my $paraSet = "$r,$modData";
	print G $paraSet;
	
	close(G);

    } else {
	print "For $trial, not found rule set file: $ruleFilePath\n";
	$bad++;
    }
}

close(F);

print "Found rules for $good cells, failed to find rules for $bad cells\n";
