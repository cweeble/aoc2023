package Boxes;
use strict;

sub new {
    my $class = shift;
    my @array = ();
    my $self = { 
        number => shift,
        arrayRef => \@array,
    };
    bless($self, $class);
}

sub removeLensFromBox {
    my $self = shift;
    my ($lensLabel, $lensPosition) = (shift, shift);
    my $box;
    $lensPosition =~ /^(\d+)\.(\d+)$/;
    ($box, $lensPosition) = ($1,$2);
    die "box number wrong for ${lensLabel}" if ($box != $self->{number});

    my @array = @{$self->{arrayRef}};
    my $lensObj = $array[$lensPosition];
    die "Lens ${lensLabel} not in box ${box} position ${lensPosition}" if ($lensObj->{Label} ne $lensLabel);

    splice (@array, $lensPosition, 1);
    $self->{arrayRef} = \@array;

    my $position = 0;
    for my $lens(@array) {
        $lens->setPosition($box, $position++);
    }
}

sub addLensToBox {
    # not for replacing lenses.
    my $self = shift;
    my $lensObj = shift;

    my @array = @{$self->{arrayRef}};
    push (@array, $lensObj);
    $self->{arrayRef} = \@array;
    return scalar @array -1;
}
1;