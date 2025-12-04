module test(input logic clk,valid,rmp,output logic data);
	
	
	property  p1;
		@(posedge clk)
				$rose(valid) |-> (data[*3]) or  ( data throughout (!rmp)); 
	endproperty 
	
	assert property(p1);

endmodule
			
