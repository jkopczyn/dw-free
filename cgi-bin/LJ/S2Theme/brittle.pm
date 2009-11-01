package LJ::S2Theme::brittle;
use base qw( LJ::S2Theme );

sub layouts { ( "2r" => "two-columns-right" ) }
sub layout_prop { "layout_type" }

sub designer { "renoir" }

sub module_props {
    my $self = shift;
    my @props = qw(
        color_navigation_module_background
        color_navigation_module_link
        color_navigation_module_link_hover
        color_navigation_module_link_visited
        font_navigation_module_text
        font_navigation_module_text_size
        font_navigation_module_text_units
        font_other_module_text
        font_other_module_text_size
        font_other_module_text_units
    );
    return $self->_append_props( "module_props", @props );
}

sub entry_props {
    my $self = shift;
    my @props = qw(
        font_entry_text
        font_entry_text_size
        font_entry_text_units
        font_date_time
        font_date_time_size
        font_date_time_units
    );
    return $self->_append_props( "entry_props", @props );
}

package LJ::S2Theme::brittle::rust;
use base qw( LJ::S2Theme::brittle );
sub cats { qw( base ) }

package LJ::S2Theme::brittle::nnwm2009;
use base qw( LJ::S2Theme::brittle );
sub cats { qw( featured ) }

sub designer { "zvi" }

1;
