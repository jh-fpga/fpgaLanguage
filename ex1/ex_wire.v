module ex_wire(
	input 	wire  	sel,
	input 	wire  	a,
	input 	wire	b,
	output 	wire 	c
);

// wire 变量一定要用assign 连续赋值语句赋值，且必须用阻塞赋值
assign c = (sel == 1'b1)? a : b;


endmodule