//write an assertion to ensure signal data_valid stays high for exactly 4 cycle after start is asserted 
	
	module handsaking;
	 bit clk;
	 bit data_valid;
	 bit start;
	 
	 property p1;
		@(posedge clk)
			start |-> (data_valid[*4] ## !data_valid);
	endproperty
	
	assert property(p1);
	 
	 
	
	
	endmodule 
