#!/usr/bin/perl
use Data::Dumper;
use strict;
my $answer = 1;
my $times = <DATA>;
my $distances = <DATA>;
chomp $times;
chomp $distances;
$times =~ s/^Time:\s+//;
$distances =~ s/^Distance:\s+//;
my @times = split(/ +/, $times);
my @distances = split(/ +/, $distances);

my %records;
while (my $t = shift @times) {
    $records{$t} = shift(@distances);
}

for my $time (sort {$a <=> $b} keys %records) {
    my $count = 0;
    my @range = (1 .. int($time/2));
    for my $speed (@range) {
        my $ttl = $time - $speed;
        my $travelDistance = $ttl * $speed;
        my $wins = $travelDistance > $records{$time};
        if ($wins) {
            $count+= $speed == $ttl ? 1 : 2;
            $wins = "BEATEN! count=${count}";
        }
        printf("racetime: %d, button: %d, speed: %d, timeLeft: %d distance: %d record: %d (%s)\n"
        ,   $time
        ,   $speed
        ,   $speed
        ,   $ttl
        ,   $travelDistance
        ,   $records{$time}
        ,   $wins
        );
    }
    $answer *= $count if ($count);
}
print $answer;
__DATA__
Time:        47     70     75     66
Distance:   282   1079   1147   1062