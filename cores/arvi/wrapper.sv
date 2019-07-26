module rvfi_wrapper (
	input         clock,
	input         reset,

	`RVFI_OUTPUTS
);

	(* keep *) `rvformal_rand_reg mem_ready;
	(* keep *) `rvformal_rand_reg [31:0] mem_rdata;

	(* keep *) wire        mem_valid;
	(* keep *) wire        mem_instr;
	(* keep *) wire [31:0] mem_addr;
	(* keep *) wire [31:0] mem_wdata;
	(* keep *) wire [3:0]  mem_wstrb;
	

	RISC_V uut (
		.i_clk    (clock),
		.i_rst    (!reset),

	 	.i_ack     (mem_ready), 
	 	.i_rd_data (mem_rdata),	
	 	/* 
		.o_bus_en  (o_bus_en),
		.o_wr_en   (o_wr_en),
		.o_wr_data (o_wr_data),
		.o_addr    (o_addr),
		.o_byte_en (o_byte_en)
		*/
		.o_bus_en  (mem_valid),
		.o_wr_en   (),
		.o_wr_data (mem_wdata),
		.o_addr    (mem_addr),
		.o_byte_en (mem_wstrb),

		`RVFI_CONN
	);

endmodule
