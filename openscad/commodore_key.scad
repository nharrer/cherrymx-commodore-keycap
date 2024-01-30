use <./commodore_logo.scad>
include <./KeyV2/includes.scad>

inlay_height = 2;
inlay_offset = 0.05;

module c64key() {
    $stem_slop = 0.30;
    $stem_inner_slop = 0.4;
    $support_type = "flared";
    $stem_support_type = "disable";
    //$stem_inset = 2;
    oem_row(5) key();
}

module c64logo(offset=0) {
    translate([0, 1.5, 9.5])
    linear_extrude(height=inlay_height)
    offset(delta=offset)
    logo(10);
}

module body() {
    difference() {
        c64key();
        c64logo();
    }
}

module inlay() {
    translate([0, 0, -9.5])
    intersection() {
        c64key();
        c64logo(-inlay_offset);
    }
}

// uncomment accordingly, for which part you want to render:
body();
//inlay();
