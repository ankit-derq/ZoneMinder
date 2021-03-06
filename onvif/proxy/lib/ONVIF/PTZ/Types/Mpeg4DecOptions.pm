package ONVIF::PTZ::Types::Mpeg4DecOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ResolutionsAvailable_of :ATTR(:get<ResolutionsAvailable>);
my %SupportedMpeg4Profiles_of :ATTR(:get<SupportedMpeg4Profiles>);
my %SupportedInputBitrate_of :ATTR(:get<SupportedInputBitrate>);
my %SupportedFrameRate_of :ATTR(:get<SupportedFrameRate>);

__PACKAGE__->_factory(
    [ qw(        ResolutionsAvailable
        SupportedMpeg4Profiles
        SupportedInputBitrate
        SupportedFrameRate

    ) ],
    {
        'ResolutionsAvailable' => \%ResolutionsAvailable_of,
        'SupportedMpeg4Profiles' => \%SupportedMpeg4Profiles_of,
        'SupportedInputBitrate' => \%SupportedInputBitrate_of,
        'SupportedFrameRate' => \%SupportedFrameRate_of,
    },
    {
        'ResolutionsAvailable' => 'ONVIF::PTZ::Types::VideoResolution',
        'SupportedMpeg4Profiles' => 'ONVIF::PTZ::Types::Mpeg4Profile',
        'SupportedInputBitrate' => 'ONVIF::PTZ::Types::IntRange',
        'SupportedFrameRate' => 'ONVIF::PTZ::Types::IntRange',
    },
    {

        'ResolutionsAvailable' => 'ResolutionsAvailable',
        'SupportedMpeg4Profiles' => 'SupportedMpeg4Profiles',
        'SupportedInputBitrate' => 'SupportedInputBitrate',
        'SupportedFrameRate' => 'SupportedFrameRate',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::Mpeg4DecOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Mpeg4DecOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ResolutionsAvailable


=item * SupportedMpeg4Profiles


=item * SupportedInputBitrate


=item * SupportedFrameRate




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::Mpeg4DecOptions
   ResolutionsAvailable =>  { # ONVIF::PTZ::Types::VideoResolution
     Width =>  $some_value, # int
     Height =>  $some_value, # int
   },
   SupportedMpeg4Profiles => $some_value, # Mpeg4Profile
   SupportedInputBitrate =>  { # ONVIF::PTZ::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
   SupportedFrameRate =>  { # ONVIF::PTZ::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

