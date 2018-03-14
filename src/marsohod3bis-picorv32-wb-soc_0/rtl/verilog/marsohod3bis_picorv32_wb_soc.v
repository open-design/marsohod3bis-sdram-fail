module marsohod3bis_picorv32_wb_soc(
	input CLK100MHZ,

	input KEY1,

	output SDRAM_CLK,
	inout [15:0] SDRAM_DQ
	);

	wire wb_clk;
	wire wb_rst;

	wire sdram_clk;
	wire sdram_rst;

	altpll_wb_clkgen #(
		.DEVICE_FAMILY ("MAX 10"),
		.INPUT_FREQUENCY (100),

		/* wb_clk: 24 MHz */
		.WB_DIVIDE_BY (25),
		.WB_MULTIPLY_BY (6),

		/* sdram_clk: 75 MHz */
		.SDRAM_DIVIDE_BY (4),
		.SDRAM_MULTIPLY_BY (3)
	)
	clkgen(
		.sys_clk_pad_i (CLK100MHZ),
		.rst_n_pad_i (KEY1),

		.wb_clk_o (wb_clk),
		.wb_rst_o (wb_rst),

		.sdram_clk_o (sdram_clk),
		.sdram_rst_o (sdram_rst)
	);

	assign SDRAM_DQ = 16'bz;
	assign SDRAM_CLK = sdram_clk;

endmodule
