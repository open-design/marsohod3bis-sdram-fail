set_global_assignment -name FLOW_ENABLE_IO_ASSIGNMENT_ANALYSIS ON
set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"

set_location_assignment PIN_26 -to CLK100MHZ

set_location_assignment PIN_25 -to KEY1
set_instance_assignment -name IO_STANDARD "3.3 V SCHMITT TRIGGER" -to KEY1
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to KEY1

# the nCONFIG, nSTATUS, and CONF_DONE pins are disabled when the device
# operates in user mode and is available as a user I/O pin.
set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF

# the CONFIG_SEL pin are disabled
# when the device operates in user mode and is available as a user I/O pin.
#set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
#
set_location_assignment PIN_27 -to SDRAM_DQ[15]
set_location_assignment PIN_28 -to SDRAM_DQ[14]
set_location_assignment PIN_29 -to SDRAM_DQ[13]
set_location_assignment PIN_30 -to SDRAM_DQ[12]
set_location_assignment PIN_32 -to SDRAM_DQ[11]
set_location_assignment PIN_33 -to SDRAM_DQ[10]
set_location_assignment PIN_38 -to SDRAM_DQ[9]
set_location_assignment PIN_39 -to SDRAM_DQ[8]

set_location_assignment PIN_66 -to SDRAM_DQ[7]
set_location_assignment PIN_69 -to SDRAM_DQ[6]
set_location_assignment PIN_70 -to SDRAM_DQ[5]
set_location_assignment PIN_74 -to SDRAM_DQ[4]
set_location_assignment PIN_75 -to SDRAM_DQ[3]
set_location_assignment PIN_76 -to SDRAM_DQ[2]
set_location_assignment PIN_77 -to SDRAM_DQ[1]
set_location_assignment PIN_78 -to SDRAM_DQ[0]

set_location_assignment PIN_43 -to SDRAM_CLK

set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
set_global_assignment -name VCCA_USER_VOLTAGE 3.3V
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_DATA0_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_DATA1_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_FLASH_NCE_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_DCLK_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE BALANCED
set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
set_global_assignment -name SYNCHRONIZER_IDENTIFICATION OFF
set_global_assignment -name TIMEQUEST_DO_CCPP_REMOVAL ON
#set_global_assignment -name ENABLE_OCT_DONE ON
#set_global_assignment -name EXTERNAL_FLASH_FALLBACK_ADDRESS 00000000
#set_global_assignment -name INTERNAL_FLASH_UPDATE_MODE "SINGLE IMAGE WITH ERAM"
