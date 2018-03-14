project_new marsohod3bis-picorv32-wb-soc_0 -overwrite
set_global_assignment -name FAMILY "MAX 10"
set_global_assignment -name DEVICE 10M08SAE144C8GES
set_global_assignment -name TOP_LEVEL_ENTITY marsohod3bis_picorv32_wb_soc
set_global_assignment -name VERILOG_FILE src/altera_clkgen_0/wrapped_altpll.v
set_global_assignment -name VERILOG_FILE src/altera_clkgen_0/altpll_wb_clkgen.v
set_global_assignment -name VERILOG_FILE src/marsohod3bis-picorv32-wb-soc_0/rtl/verilog/marsohod3bis_picorv32_wb_soc.v
set_global_assignment -name SDC_FILE src/marsohod3bis-picorv32-wb-soc_0/data/marsohod3.sdc
source src/marsohod3bis-picorv32-wb-soc_0/data/marsohod3bis-pinmap.tcl
source src/marsohod3bis-picorv32-wb-soc_0/data/options.tcl
