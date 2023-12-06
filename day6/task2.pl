#!/usr/bin/perl
use Data::Dumper;
use strict;
my $answer = 1;
my $times = <DATA>;
my $distances = <DATA>;
chomp $times;
chomp $distances;
$times =~ s/\D//g;
$distances =~ s/\D//g;
my %records = ( $times => $distances );

for my $time (sort {$a <=> $b} keys %records) {
    my $count = 0;
    my @range = reverse (1 .. int($time/2));
    my $start = 1;
    while (my $speed = $range[midPoint(\@range, \$start)]) {
        my $wins = race($time, $speed);
        print ":${wins}";
        # if it wins, move forward half again.
        if ($wins) {
            next;
        }
        # if it loses, everything after that record loses. delete them
        $#range = $start;
        do {
            $#range--;
            $answer = 2* @range . "\n";
        } until (race( $time, $range[-1]));
        
    }
}
$answer-- if ($times =~ /[24680]$/);
print "\n${answer}\n";

sub midPoint {
    my ($arrayRef, $startRef) = @_;
    my $size = scalar @{$arrayRef};
    my $start = ${$startRef};
    my $pos = int(($size-$start)/2) + $start;
    ${$startRef} = $pos;
    print "\nSize:Pos:Started:now:Wins" . join(':', scalar @{$arrayRef}, $pos, "${start}=>${$startRef}");
    return $pos;
}

sub race {
    my ($time, $speed) = @_;
    my $ttl = $time - $speed;
    my $travelDistance = $ttl * $speed;
    my $wins = $travelDistance if ($travelDistance > $records{$time});
    return $wins;
}
__DATA__
Time:        47     70     75     66
Distance:   282   1079   1147   1062