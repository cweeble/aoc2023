package Lenses;
use strict;
use Boxes;

my @boxes;
for my $box (0..255) {
    push (@boxes, new Boxes($box));
}

sub new {
    my $class = shift;
    my $self = {
        Label => shift,
        FocalLength => undef,
        Box => undef,
        Location => 'WALL',
        BoxesRef => undef,
    };
    bless($self, $class);
    my $box = $self->_determineBox($self->{Label});
    $self->{Box} = $box;
    $self->{BoxesRef} = $boxes[$box];
    return $self;
}

sub _determineBox {
    my $self = shift;
    my @string = split(//, $self->{Label});
    my $currentTotal = 0;
    for my $c (@string) {
        my $ascii = ord($c);
        $currentTotal += $ascii;
        $currentTotal *= 17;
        $currentTotal %= 256;
    }
    return $currentTotal;
}

sub setFocalLength {
    my $self = shift;
    $self->{FocalLength} = shift;
    return $self;
}

sub removeFromBox {
    my $self = shift;
    return if ($self->{Location} eq 'WALL');

    my $boxObj = $self->{BoxesRef};
    $boxObj->removeLensFromBox($self->{Label}, $self->{Location});
    $self->{Location} = 'WALL';
    return $self;
}

sub addToBox {
    my $self = shift;
    return $self if ($self->{Location} ne 'WALL');
    my $boxObj = $self->{BoxesRef};
    my $location = $boxObj->addLensToBox($self);
    $self->setPosition($self->{Box}, $location);
}

sub setPosition {
    my $self = shift;
    my ($box, $position) = (shift, shift);
    $self->{Location} = join('.', $box, $position);
}

sub getFocusingPower {
    my $self = shift;
    my $location = $self->{Location};
    return 0 if ($location) eq 'WALL';

    my ($box, $position) = split(/\./, $self->{Location});
    $box++;
    $position++;

    my $focalPower = 1;
    $focalPower *= $box;
    $focalPower *= $position;
    $focalPower *= $self->{FocalLength};

    return $focalPower;    
}

1;