set_global_assignment -entity "mac1" -library "lib_mac1" -name IP_TOOL_NAME "altera_mult_add"
set_global_assignment -entity "mac1" -library "lib_mac1" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "mac1" -library "lib_mac1" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_mac1" -name SPD_FILE [file join $::quartus(sip_path) "mac1.spd"]

set_global_assignment -library "lib_mac1" -name MISC_FILE [file join $::quartus(sip_path) "mac1_sim/mac1.v"]
