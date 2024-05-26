`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/01 23:03:46
// Design Name: 
// Module Name: bianmaqi
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bianmaqi(IN,EN,Y,Done);
	input[7:0] IN;
	input EN;
	output reg Done;
	output reg[2:0] Y;
	//  IN/EN发生变化时，重新执行
	always @(IN or EN)
	//EN为0
	if(!EN)
	  begin
	  //优先级依次递减
	    if(IN[0]) begin Y[2]=0;Y[1]=0;Y[0]=0; Done=1;end
		else if(IN[1]) begin Y[2]=0;Y[1]=0;Y[0]=1; Done=1;end
		else if(IN[2]) begin Y[2]=0;Y[1]=1;Y[0]=0; Done=1;end
		else if(IN[3]) begin Y[2]=0;Y[1]=1;Y[0]=1; Done=1;end
		else if(IN[4]) begin Y[2]=1;Y[1]=0;Y[0]=0; Done=1;end
		else if(IN[5]) begin Y[2]=1;Y[1]=0;Y[0]=1; Done=1;end
		else if(IN[6]) begin Y[2]=1;Y[1]=1;Y[0]=0; Done=1;end
		else if(IN[7]) begin Y[2]=1;Y[1]=1;Y[0]=1; Done=1;end
		else begin Y[2]=0;Y[1]=0;Y[0]=0;Done=0;end
	  end
	else begin Y[2]=0;Y[1]=0;Y[0]=0;Done=0;end
	
endmodule

