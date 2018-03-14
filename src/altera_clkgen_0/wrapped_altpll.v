// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on

module wrapped_altpll #(
	parameter DEVICE_FAMILY = "",
	parameter INPUT_FREQUENCY = 50,
	parameter C0_DIVIDE_BY = 1,
	parameter C0_MULTIPLY_BY = 1,
	parameter C1_DIVIDE_BY = 1,
	parameter C1_MULTIPLY_BY = 1
) (
	areset,
	inclk0,
	c0,
	c1,
	locked
);

	input	areset;
	input	inclk0;
	output	c0;
	output	c1;
	output	locked;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0	areset;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [4:0] cx_wire;
	wire c0 = cx_wire[0];
	wire c1 = cx_wire[1];

	altpll altpll_component (
				.areset (areset),
				.inclk ({1'h0, inclk0}),
				.clk (cx_wire),
				.locked (locked),
				.activeclock (),
				.clkbad (),
				.clkena ({6{1'b1}}),
				.clkloss (),
				.clkswitch (1'b0),
				.configupdate (1'b0),
				.enable0 (),
				.enable1 (),
				.extclk (),
				.extclkena ({4{1'b1}}),
				.fbin (1'b1),
				.fbmimicbidir (),
				.fbout (),
				.fref (),
				.icdrclk (),
				.pfdena (1'b1),
				.phasecounterselect ({4{1'b1}}),
				.phasedone (),
				.phasestep (1'b1),
				.phaseupdown (1'b1),
				.pllena (1'b1),
				.scanaclr (1'b0),
				.scanclk (1'b0),
				.scanclkena (1'b1),
				.scandata (1'b0),
				.scandataout (),
				.scandone (),
				.scanread (1'b0),
				.scanwrite (1'b0),
				.sclkout0 (),
				.sclkout1 (),
				.vcooverrange (),
				.vcounderrange ());
	defparam
		altpll_component.bandwidth_type = "AUTO",

		altpll_component.clk0_divide_by = C0_DIVIDE_BY,
		altpll_component.clk0_multiply_by = C0_MULTIPLY_BY,
		altpll_component.clk0_duty_cycle = 50,
		altpll_component.clk0_phase_shift = "0",

		altpll_component.clk1_divide_by = C1_DIVIDE_BY,
		altpll_component.clk1_multiply_by = C1_MULTIPLY_BY,
		altpll_component.clk1_duty_cycle = 50,
		altpll_component.clk1_phase_shift = "0",

		altpll_component.compensate_clock = "CLK0",
		altpll_component.inclk0_input_frequency = (1000000 / INPUT_FREQUENCY),
		altpll_component.device_family = DEVICE_FAMILY,
		altpll_component.lpm_hint = "CBX_MODULE_PREFIX=altppl",
		altpll_component.lpm_type = "altpll",
		altpll_component.operation_mode = "NORMAL",
		altpll_component.pll_type = "AUTO",
		altpll_component.port_activeclock = "PORT_UNUSED",
		altpll_component.port_areset = "PORT_USED",
		altpll_component.port_clkbad0 = "PORT_UNUSED",
		altpll_component.port_clkbad1 = "PORT_UNUSED",
		altpll_component.port_clkloss = "PORT_UNUSED",
		altpll_component.port_clkswitch = "PORT_UNUSED",
		altpll_component.port_configupdate = "PORT_UNUSED",
		altpll_component.port_fbin = "PORT_UNUSED",
		altpll_component.port_inclk0 = "PORT_USED",
		altpll_component.port_inclk1 = "PORT_UNUSED",
		altpll_component.port_locked = "PORT_USED",
		altpll_component.port_pfdena = "PORT_UNUSED",
		altpll_component.port_phasecounterselect = "PORT_UNUSED",
		altpll_component.port_phasedone = "PORT_UNUSED",
		altpll_component.port_phasestep = "PORT_UNUSED",
		altpll_component.port_phaseupdown = "PORT_UNUSED",
		altpll_component.port_pllena = "PORT_UNUSED",
		altpll_component.port_scanaclr = "PORT_UNUSED",
		altpll_component.port_scanclk = "PORT_UNUSED",
		altpll_component.port_scanclkena = "PORT_UNUSED",
		altpll_component.port_scandata = "PORT_UNUSED",
		altpll_component.port_scandataout = "PORT_UNUSED",
		altpll_component.port_scandone = "PORT_UNUSED",
		altpll_component.port_scanread = "PORT_UNUSED",
		altpll_component.port_scanwrite = "PORT_UNUSED",
		altpll_component.port_clk0 = "PORT_USED",
		altpll_component.port_clk1 = "PORT_USED",
		altpll_component.port_clk2 = "PORT_UNUSED",
		altpll_component.port_clk3 = "PORT_UNUSED",
		altpll_component.port_clk4 = "PORT_UNUSED",
		altpll_component.port_clk5 = "PORT_UNUSED",
		altpll_component.port_clkena0 = "PORT_UNUSED",
		altpll_component.port_clkena1 = "PORT_UNUSED",
		altpll_component.port_clkena2 = "PORT_UNUSED",
		altpll_component.port_clkena3 = "PORT_UNUSED",
		altpll_component.port_clkena4 = "PORT_UNUSED",
		altpll_component.port_clkena5 = "PORT_UNUSED",
		altpll_component.port_extclk0 = "PORT_UNUSED",
		altpll_component.port_extclk1 = "PORT_UNUSED",
		altpll_component.port_extclk2 = "PORT_UNUSED",
		altpll_component.port_extclk3 = "PORT_UNUSED",
		altpll_component.self_reset_on_loss_lock = "OFF",
		altpll_component.width_clock = 5;

endmodule
