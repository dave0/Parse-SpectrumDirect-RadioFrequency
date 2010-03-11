package Parse::SpectrumDirect::RadioFrequency;
use warnings;
use strict;
use 5.008;

=head1 NAME

Parse::SpectrumDirect::RadioFrequency - Parse Industry Canada "Spectrum Direct" radio frequency search output

=head1 VERSION

Version 0.100

=cut

our $VERSION = '0.100';

=head1 DESCRIPTION

This module provides a parser for the "Radio Frequency Search" text-format
output from Industry Canada's Spectrum Direct service.  This service provides
information on the location of RF spectrum licensing, transmitter locations,
etc.

The service is available at http://www.ic.gc.ca/eic/site/sd-sd.nsf/eng/home

=head1 SYNOPSIS

    my $parser = Parse::SpectrumDirect::RadioFrequency->new();

    $parser->parse( $prefetched_output );

    my $legend_hash = $parser->get_legend();

    my $stations = $parser->get_stations();

=head1 METHODS

=over 4

=item new ( )

Creates a new parser.

=cut

sub new
{
	my ($class) = @_;
	return bless({},$class);
}

=item parse ( $data )

Parses the raw data provided.  Returns a true value if successful, a false if
not.

Parsed data can be obtained with get_legend() and get_stations() (see below).

=cut

sub parse
{
	my ($self) = @_;
}

=item get_legend ()

Returns the description of fields as parsed from the input data.

=cut

sub get_legend
{
	my ($self) = @_;
	return $self->{legend};
}

=item get_stations ()

Returns station information as parsed from the input data.

=back

=cut

sub get_stations
{
	my ($self) = @_;
	return $self->{stations};
}

1;
__END__

=head1 AUTHOR

Dave O'Neill, C<< <dmo at dmo.ca> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-parse-spectrumdirect at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Parse-SpectrumDirect-RadioFrequency>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Parse::SpectrumDirect::RadioFrequency

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Parse-SpectrumDirect-RadioFrequency>

=item * Search CPAN

L<http://search.cpan.org/dist/Parse-SpectrumDirect-RadioFrequency>

=item * Github

L<http://github.com/dave0/Parse-SpectrumDirect-RadioFrequency>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2010 Dave O'Neill, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut
