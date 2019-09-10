// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

use <src/key.scad>

include <src/settings.scad>
include <src/key_sizes.scad>
include <src/key_profiles.scad>
include <src/key_types.scad>
include <src/key_transformations.scad>
include <src/key_helpers.scad>



u(1) choc() {
  flared_support()  tined_stem_support() sa_row(1){
    $stem_support_height = 2;
    low_profile() {
      key();
    }
  }
}

/* translate_u(1,0) u(1) choc() row_profile("oem") low_profile() key(); */
