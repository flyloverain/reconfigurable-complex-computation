`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/10/08 19:39:07
// Design Name: 
// Module Name: CR
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


module CR(
    input  signed     [19:0] x_crin,
    input  signed     [19:0] z_crin,
    input  clk,
    input  rst_n,
    input  signed     [19:0] z1endin,
    input  signed     [19:0] z2endin,
    input              vin_cr,
    input       [1:0]  m_in,
    output reg  [1:0]  m_out,
    output reg         vout_cr,
    output reg  [19:0] x_crout,
    output reg  [19:0] y_crout,
    output reg  [19:0] z1endout,
    output reg  [19:0] z2endout
    );
    reg signed [19:0]	 y0=20'b0;
    reg signed [19:0]	 x1,y1,z1;
	reg signed [19:0]	 x2,y2,z2;
	reg signed [19:0]	 x3,y3,z3;
	reg signed [19:0]	 x4,y4,z4;
	reg signed [19:0]	 x5,y5,z5;
	reg signed [19:0]	 x6,y6,z6;
	reg signed [19:0]	 x7,y7,z7;
	reg signed [19:0]	 x8,y8,z8;
	reg signed [19:0]	 x9,y9,z9;
	reg signed [19:0]	 x10,y10,z10;
	reg signed [19:0]	 x11,y11,z11;
	reg signed [19:0]	 x12,y12,z12;
	reg signed [19:0]	 x13,y13,z13;
	reg v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
	reg [1:0] m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13;
	reg signed [19:0]    z1end1,z1end2,z1end3,z1end4,z1end5,z1end6,z1end7,z1end8,z1end9,z1end10,z1end11,z1end12,z1end13;
	reg signed [19:0]    z2end1,z2end2,z2end3,z2end4,z2end5,z2end6,z2end7,z2end8,z2end9,z2end10,z2end11,z2end12,z2end13;
	
	always@(posedge clk) begin
	if(!rst_n) begin
		v1 <= 1'b0;
		v2 <= 1'b0;
		v3 <= 1'b0;
		v4 <= 1'b0;
		v5 <= 1'b0;
		v6 <= 1'b0;
		v7 <= 1'b0;
		v8 <= 1'b0;
		v9 <= 1'b0;
		v10 <= 1'b0;
		v11 <= 1'b0;
		v12 <= 1'b0;
		v13 <= 1'b0;
		vout_cr <= 1'b0;
		end
		else begin
		v1 <= vin_cr;
		v2 <= v1;
		v3 <= v2;
		v4 <= v3;
		v5 <= v4;
		v6 <= v5;
		v7 <= v6;
		v8 <= v7;
		v9 <= v8;
		v10 <= v9;
		v11 <= v10;
		v12 <= v11;
		v13 <= v12;
		vout_cr <= v13;
		end
		end
		
	always@(posedge clk) begin
	if(!rst_n) begin
		z1end1 <= 1'b0;
		z1end2 <= 1'b0;
		z1end3 <= 1'b0;
		z1end4 <= 1'b0;
		z1end5 <= 1'b0;
		z1end6 <= 1'b0;
		z1end7 <= 1'b0;
		z1end8 <= 1'b0;
		z1end9 <= 1'b0;
		z1end10 <= 1'b0;
		z1end11 <= 1'b0;
		z1end12 <= 1'b0;
		z1end13 <= 1'b0;
		z1endout <= 1'b0;
		end
		else begin
		z1end1 <= z1endin;
		z1end2 <= z1end1;
		z1end3 <= z1end2;
		z1end4 <= z1end3;
		z1end5 <= z1end4;
		z1end6 <= z1end5;
		z1end7 <= z1end6;
		z1end8 <= z1end7;
		z1end9 <= z1end8;
		z1end10 <= z1end9;
		z1end11 <= z1end10;
		z1end12 <= z1end11;
		z1end13 <= z1end12;
		z1endout <= z1end13;
		end
		end
		
	always@(posedge clk) begin
	if(!rst_n) begin
		z2end1 <= 1'b0;
		z2end2 <= 1'b0;
		z2end3 <= 1'b0;
		z2end4 <= 1'b0;
		z2end5 <= 1'b0;
		z2end6 <= 1'b0;
		z2end7 <= 1'b0;
		z2end8 <= 1'b0;
		z2end9 <= 1'b0;
		z2end10 <= 1'b0;
		z2end11 <= 1'b0;
		z2end12 <= 1'b0;
		z2end13 <= 1'b0;
		z2endout <= 1'b0;
		end
		else begin
		z2end1 <= z2endin;
		z2end2 <= z2end1;
		z2end3 <= z2end2;
		z2end4 <= z2end3;
		z2end5 <= z2end4;
		z2end6 <= z2end5;
		z2end7 <= z2end6;
		z2end8 <= z2end7;
		z2end9 <= z2end8;
		z2end10 <= z2end9;
		z2end11 <= z2end10;
		z2end12 <= z2end11;
		z2end13 <= z2end12;
		z2endout <= z2end13;
		end
		end
		
	always@(posedge clk) begin
	if(!rst_n) begin
		m1 <= 1'b0;
		m2 <= 1'b0;
		m3 <= 1'b0;
		m4 <= 1'b0;
		m5 <= 1'b0;
		m6 <= 1'b0;
		m7 <= 1'b0;
		m8 <= 1'b0;
		m9 <= 1'b0;
		m10 <= 1'b0;
		m11 <= 1'b0;
		m12 <= 1'b0;
		m13 <= 1'b0;
		m_out <= 1'b0;
		end
		else begin
		m1 <= m_in;
		m2 <= m1;
		m3 <= m2;
		m4 <= m3;
		m5 <= m4;
		m6 <= m5;
		m7 <= m6;
		m8 <= m7;
		m9 <= m8;
		m10 <= m9;
		m11 <= m10;
		m12 <= m11;
		m13 <= m12;
		m_out <= m13;
		end
		end	
		
	always@(posedge clk) begin
	if(!rst_n) begin
		x1 <= 0;
		y1 <= 0;
		z1 <= 0;
		end
	else if(vin_cr) begin
		if(z_crin[19]==0) begin
			x1 <= x_crin - y0;
			y1 <= y0 + x_crin;
			z1 <= z_crin - 20'b00001100100100010000;
		end
		else begin
			x1 <= x_crin + y0;
			y1 <= y0 - x_crin;
			z1 <= z_crin + 20'b00001100100100010000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x2 <= 0;
		y2 <= 0;
		z2 <= 0;
		end
	else if(v1) begin
		if(z1[19]==0) begin
			x2 <= x1 - (y1>>>1);
			y2 <= y1 + (x1>>>1);
			z2 <= z1 - 20'b00000111011010110010;
		end
		else begin
			x2 <= x1 + (y1>>>1);
			y2 <= y1 - (x1>>>1);
			z2 <= z1 + 20'b00000111011010110010;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x3 <= 0;
		y3 <= 0;
		z3 <= 0;
		end
	else if(v2) begin
		if(z2[19]==0) begin
			x3 <= x2 - (y2>>>2);
			y3 <= y2 + (x2>>>2);
			z3 <= z2 - 20'b00000011111010110111;
		end
		else begin
			x3 <= x2 + (y2>>>2);
			y3 <= y2 - (x2>>>2);
			z3 <= z2 + 20'b00000011111010110111;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x4 <= 0;
		y4 <= 0;
		z4 <= 0;
		end
	else if(v3) begin
		if(z3[19]==0) begin
			x4 <= x3 - (y3>>>3);
			y4 <= y3 + (x3>>>3);
			z4 <= z3 - 20'b00000001111111010110;
		end
		else begin
			x4 <= x3 + (y3>>>3);
			y4 <= y3 - (x3>>>3);
			z4 <= z3 + 20'b00000001111111010110;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x5 <= 0;
		y5 <= 0;
		z5 <= 0;
		end
	else if(v4) begin
		if(z4[19]==0) begin
			x5 <= x4 - (y4>>>4);
			y5 <= y4 + (x4>>>4);
			z5 <= z4 - 20'b00000000111111111011;
		end
		else begin
			x5 <= x4 + (y4>>>4);
			y5 <= y4 - (x4>>>4);
			z5 <= z4 + 20'b00000000111111111011;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x6 <= 0;
		y6 <= 0;
		z6 <= 0;
		end
	else if(v5) begin
		if(z5[19]==0) begin
			x6 <= x5 - (y5>>>5);
			y6 <= y5 + (x5>>>5);
			z6 <= z5 - 20'b00000000011111111111;
		end
		else begin
			x6 <= x5 + (y5>>>5);
			y6 <= y5 - (x5>>>5);
			z6 <= z5 + 20'b00000000011111111111;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x7 <= 0;
		y7 <= 0;
		z7 <= 0;
		end
	else if(v6) begin
		if(z6[19]==0) begin
			x7 <= x6 - (y6>>>6);
			y7 <= y6 + (x6>>>6);
			z7 <= z6 - 20'b00000000010000000000;
		end
		else begin
			x7 <= x6 + (y6>>>6);
			y7 <= y6 - (x6>>>6);
			z7 <= z6 + 20'b00000000010000000000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x8 <= 0;
		y8 <= 0;
		z8 <= 0;
		end
	else if(v7) begin
		if(z7[19]==0) begin
			x8 <= x7 - (y7>>>7);
			y8 <= y7 + (x7>>>7);
			z8 <= z7 - 20'b00000000001000000000;
		end
		else begin
			x8 <= x7 + (y7>>>7);
			y8 <= y7 - (x7>>>7);
			z8 <= z7 + 20'b00000000001000000000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x9 <= 0;
		y9 <= 0;
		z9 <= 0;
		end
	else if(v8) begin
		if(z8[19]==0) begin
			x9 <= x8 - (y8>>>8);
			y9 <= y8 + (x8>>>8);
			z9 <= z8 - 20'b00000000000100000000;
		end
		else begin
			x9 <= x8 + (y8>>>8);
			y9 <= y8 - (x8>>>8);
			z9 <= z8 + 20'b00000000000100000000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x10 <= 0;
		y10 <= 0;
		z10 <= 0;
		end
	else if(v9) begin
		if(z9[19]==0) begin
			x10 <= x9 - (y9>>>9);
			y10 <= y9 + (x9>>>9);
			z10 <= z9 - 20'b00000000000010000000;
		end
		else begin
			x10 <= x9 + (y9>>>9);
			y10 <= y9 - (x9>>>9);
			z10 <= z9 + 20'b00000000000010000000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x11 <= 0;
		y11 <= 0;
		z11 <= 0;
		end
	else if(v10) begin
		if(z10[19]==0) begin
			x11 <= x10 - (y10>>>10);
			y11 <= y10 + (x10>>>10);
			z11 <= z10 - 20'b00000000000001000000;
		end
		else begin
			x11 <= x10 + (y10>>>10);
			y11 <= y10 - (x10>>>10);
			z11 <= z10 + 20'b00000000000001000000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x12 <= 0;
		y12 <= 0;
		z12 <= 0;
		end
	else if(v11) begin
		if(z11[19]==0) begin
			x12 <= x11 - (y11>>>11);
			y12 <= y11 + (x11>>>11);
			z12 <= z11 - 20'b00000000000000100000;
		end
		else begin
			x12 <= x11 + (y11>>>11);
			y12 <= y11 - (x11>>>11);
			z12 <= z11 + 20'b00000000000000100000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x13 <= 0;
		y13 <= 0;
		z13 <= 0;
		end
	else if(v12) begin
		if(z12[19]==0) begin
			x13 <= x12 - (y12>>>12);
			y13 <= y12 + (x12>>>12);
			z13 <= z12 - 20'b00000000000000010000;
		end
		else begin
			x13 <= x12 + (y12>>>12);
			y13 <= y12 - (x12>>>12);
			z13 <= z12 + 20'b00000000000000010000;
		end
	end
end

	always@(posedge clk) begin
	if(!rst_n) begin
		x_crout <= 0;
		y_crout <= 0;
		end
	else if(v13) begin
		if(z13[19]==0) begin
			x_crout <= x13 - (y13>>>13);
			y_crout <= y13 + (x13>>>13);
		end
		else begin
			x_crout <= x13 + (y13>>>13);
			y_crout <= y13 - (x13>>>13);
		end
	end
end


	
	
	
	
endmodule
