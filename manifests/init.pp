# Class: setup_voms_client
#
# This module manages setup_voms_client
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
define setup_voms_client($vo = $title) {
  $converted_vo = replace_dot_to_underscore($vo)
  include "voms::$converted_vo"

}
