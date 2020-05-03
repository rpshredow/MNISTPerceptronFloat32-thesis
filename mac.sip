set_global_assignment -entity "mac" -library "lib_mac" -name IP_TOOL_NAME "altera_mult_add"
set_global_assignment -entity "mac" -library "lib_mac" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "mac" -library "lib_mac" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_mac" -name SPD_FILE [file join $::quartus(sip_path) "mac.spd"]

set_global_assignment -library "lib_mac" -name MISC_FILE [file join $::quartus(sip_path) "mac_sim/mac.v"]
