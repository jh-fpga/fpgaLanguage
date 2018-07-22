// 模块的输入变量一定是wire变量
// 模块的输出可以是wire也可以是reg变量
// 异步D触发器
/*************************************************
*					|---------
*	input Data----->|D		Q|-----> output Data
*					|		 |
*			 clk	|		 |
*			--------|>		 |
*					----------
*				clr_____|	
************************************************/

module	ex_module(
	input	wire			sclk,
	input	wire			rst_n,
	input	wire	[7:0]	d,	
	output	reg		[7:0]	q	
);

//异步D触发器
always	@(posedge sclk or negedge rst_n) //()内是敏感列表，是电平也或者边缘触发
	 if(rst_n == 1'b0)		// “==” 表示一个比较器，()后是条件表，这里是组合逻辑
		q  <= 8'h00; 		// 边沿触发的逻辑里面一定用<=非阻塞赋值
	 else
		q <= d;
		
// 同步D触发器	
/*
always @ (posedge sclk)
	if(rst_n == 1'b0)
		q <= 8'h00;
	 else
		q <= d;
*/
	 
endmodule