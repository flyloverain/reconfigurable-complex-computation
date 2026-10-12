`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/10/08 16:47:14
// Design Name: 
// Module Name: LVH
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


module LVH(
    input  signed     [19:0] x_lvhin,
    input  signed     [19:0] y_lvhin,
    input  clk,
    input  rst_n,
    input       [1:0]  m_in,
    output reg  [1:0]  m_out,
    input  signed     [19:0] z1endin,
    input              vin_lvh,
    output reg         vout_lvh,
    output reg  [19:0] x_lvhout,
    output reg  [19:0] z_lvhout,
    output reg  [19:0] z1endout
    );
    
    reg signed [19:0]	 z0=20'b0;
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
	
	reg signed [19:0]	 xadd0,yadd0,zadd0;
	reg signed [19:0]	 xadd1,yadd1,zadd1;
	reg signed [19:0]	 xadd2,yadd2,zadd2;
	reg signed [19:0]	 xadd3,yadd3,zadd3;
	reg signed [19:0]	 xadd4,yadd4,zadd4;
	reg signed [19:0]	 xadd5,yadd5,zadd5;
	reg signed [19:0]	 xadd6,yadd6,zadd6;
	reg signed [19:0]	 xadd7,yadd7,zadd7;
	reg signed [19:0]	 xadd8,yadd8,zadd8;
	reg signed [19:0]	 xadd9,yadd9,zadd9;
	reg signed [19:0]	 xadd10,yadd10,zadd10;
	reg signed [19:0]	 xadd11,yadd11,zadd11;
	reg signed [19:0]	 xadd12,yadd12,zadd12;
	reg signed [19:0]	 xadd13,yadd13,zadd13;
	
	reg signed [19:0]    z1end1,z1end2,z1end3,z1end4,z1end5,z1end6,z1end7,z1end8,z1end9,z1end10,z1end11,z1end12,z1end13;
	
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
		vout_lvh <= 1'b0;
		end
		else begin
		v1 <= vin_lvh;
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
		vout_lvh <= v13;
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
		
		always@(*)
		begin
			case(m_in[0])
			1'b0:	begin	xadd0 = (y_lvhin>>>1); yadd0 = (x_lvhin>>>1); zadd0 = 20'b00001000110010011111;	end
			1'b1:	begin	xadd0 = 20'b0; yadd0 = (x_lvhin>>>1); zadd0 = 20'b00001000000000000000;	end
			default	begin	xadd0 = 20'b0; yadd0 = 20'b0; zadd0 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x1 <= 0;
		y1 <= 0;
		z1 <= 0;
		end
	else if(vin_lvh) begin
		if(y_lvhin[19]==1) begin
			x1 <= x_lvhin + xadd0;
			y1 <= y_lvhin + yadd0;
			z1 <= z0 - zadd0;
		end
		else begin
			x1 <= x_lvhin - xadd0;
			y1 <= y_lvhin - yadd0;
			z1 <= z0 + zadd0;
		end
	end
end

	always@(*)
		begin
			case(m1[0])
			1'b0:	begin	xadd1 = (y1>>>2); yadd1 = (x1>>>2); zadd1 = 20'b00000100000101100011;	end
			1'b1:	begin	xadd1 = 20'b0; yadd1 = (x1>>>2); zadd1 = 20'b00000100000000000000;	end
			default	begin	xadd1 = 20'b0; yadd1 = 20'b0; zadd1 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x2 <= 0;
		y2 <= 0;
		z2 <= 0;
		end
	else if(v1) begin
		if(y1[19]==1) begin
			x2 <= x1 + xadd1;
			y2 <= y1 + yadd1;
			z2 <= z1 - zadd1;
		end
		else begin
			x2 <= x1 - xadd1;
			y2 <= y1 - yadd1;
			z2 <= z1 + zadd1;
		end
	end
end

	always@(*)
		begin
			case(m2[0])
			1'b0:	begin	xadd2 = (y2>>>3); yadd2 = (x2>>>3); zadd2 = 20'b00000010000000101011;	end
			1'b1:	begin	xadd2 = 20'b0; yadd2 = (x2>>>3); zadd2 = 20'b00000010000000000000;	end
			default	begin	xadd2 = 20'b0; yadd2 = 20'b0; zadd2 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x3 <= 0;
		y3 <= 0;
		z3 <= 0;
		end
	else if(v2) begin
		if(y2[19]==1) begin
			x3 <= x2 + xadd2;
			y3 <= y2 + yadd2;
			z3 <= z2 - zadd2;
		end
		else begin
			x3 <= x2 - xadd2;
			y3 <= y2 - yadd2;
			z3 <= z2 + zadd2;
		end
	end
end

	always@(*)
		begin
			case(m3[0])
			1'b0:	begin	xadd3 = (y3>>>4); yadd3 = (x3>>>4); zadd3 = 20'b00000001000000000101;	end
			1'b1:	begin	xadd3 = 20'b0; yadd3 = (x3>>>4); zadd3 = 20'b00000001000000000000;	end
			default	begin	xadd3 = 20'b0; yadd3 = 20'b0; zadd3 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x4 <= 0;
		y4 <= 0;
		z4 <= 0;
		end
	else if(v3) begin
		if(y3[19]==1) begin
			x4 <= x3 + xadd3;
			y4 <= y3 + yadd3;
			z4 <= z3 - zadd3;
		end
		else begin
			x4 <= x3 - xadd3;
			y4 <= y3 - yadd3;
			z4 <= z3 + zadd3;
		end
	end
end

	always@(*)
		begin
			case(m4[0])
			1'b0:	begin	xadd4 = (y4>>>4); yadd4 = (x4>>>4); zadd4 = 20'b00000001000000000101;	end
			1'b1:	begin	xadd4 = 20'b0; yadd4 = (x4>>>5); zadd4 = 20'b00000000100000000000;	end
			default	begin	xadd4 = 20'b0; yadd4 = 20'b0; zadd4 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x5 <= 0;
		y5 <= 0;
		z5 <= 0;
		end
	else if(v4) begin
		if(y4[19]==1) begin
			x5 <= x4 + xadd4;
			y5 <= y4 + yadd4;
			z5 <= z4 - zadd4;
		end
		else begin
			x5 <= x4 - xadd4;
			y5 <= y4 - yadd4;
			z5 <= z4 + zadd4;
		end
	end
end

	always@(*)
		begin
			case(m5[0])
			1'b0:	begin	xadd5 = (y5>>>5); yadd5 = (x5>>>5); zadd5 = 20'b00000000100000000001;	end
			1'b1:	begin	xadd5 = 20'b0; yadd5 = (x5>>>6); zadd5 = 20'b00000000010000000000;	end
			default	begin	xadd5 = 20'b0; yadd5 = 20'b0; zadd5 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x6 <= 0;
		y6 <= 0;
		z6 <= 0;
		end
	else if(v5) begin
		if(y5[19]==1) begin
			x6 <= x5 + xadd5;
			y6 <= y5 + yadd5;
			z6 <= z5 - zadd5;
		end
		else begin
			x6 <= x5 - xadd5;
			y6 <= y5 - yadd5;
			z6 <= z5 + zadd5;
		end
	end
end

	always@(*)
		begin
			case(m6[0])
			1'b0:	begin	xadd6 = (y6>>>6); yadd6 = (x6>>>6); zadd6 = 20'b00000000010000000000;	end
			1'b1:	begin	xadd6 = 20'b0; yadd6 = (x6>>>7); zadd6 = 20'b00000000001000000000;	end
			default	begin	xadd6 = 20'b0; yadd6 = 20'b0; zadd6 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x7 <= 0;
		y7 <= 0;
		z7 <= 0;
		end
	else if(v6) begin
		if(y6[19]==1) begin
			x7 <= x6 + xadd6;
			y7 <= y6 + yadd6;
			z7 <= z6 - zadd6;
		end
		else begin
			x7 <= x6 - xadd6;
			y7 <= y6 - yadd6;
			z7 <= z6 + zadd6;
		end
	end
end

	always@(*)
		begin
			case(m7[0])
			1'b0:	begin	xadd7 = (y7>>>7); yadd7 = (x7>>>7); zadd7 = 20'b00000000001000000000;	end
			1'b1:	begin	xadd7 = 20'b0; yadd7 = (x7>>>8); zadd7 = 20'b00000000000100000000;	end
			default	begin	xadd7 = 20'b0; yadd7 = 20'b0; zadd7 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x8 <= 0;
		y8 <= 0;
		z8 <= 0;
		end
	else if(v7) begin
		if(y7[19]==1) begin
			x8 <= x7 + xadd7;
			y8 <= y7 + yadd7;
			z8 <= z7 - zadd7;
		end
		else begin
			x8 <= x7 - xadd7;
			y8 <= y7 - yadd7;
			z8 <= z7 + zadd7;
		end
	end
end

	always@(*)
		begin
			case(m8[0])
			1'b0:	begin	xadd8 = (y8>>>8); yadd8 = (x8>>>8); zadd8 = 20'b00000000000100000000;	end
			1'b1:	begin	xadd8 = 20'b0; yadd8 = (x8>>>9); zadd8 = 20'b00000000000010000000;	end
			default	begin	xadd8 = 20'b0; yadd8 = 20'b0; zadd8 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x9 <= 0;
		y9 <= 0;
		z9 <= 0;
		end
	else if(v8) begin
		if(y8[19]==1) begin
			x9 <= x8 + xadd8;
			y9 <= y8 + yadd8;
			z9 <= z8 - zadd8;
		end
		else begin
			x9 <= x8 - xadd8;
			y9 <= y8 - yadd8;
			z9 <= z8 + zadd8;
		end
	end
end

	always@(*)
		begin
			case(m9[0])
			1'b0:	begin	xadd9 = (y9>>>9); yadd9 = (x9>>>9); zadd9 = 20'b00000000000010000000;	end
			1'b1:	begin	xadd9 = 20'b0; yadd9 = (x9>>>10); zadd9 = 20'b00000000000001000000;	end
			default	begin	xadd9 = 20'b0; yadd9 = 20'b0; zadd9 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x10 <= 0;
		y10 <= 0;
		z10 <= 0;
		end
	else if(v9) begin
		if(y9[19]==1) begin
			x10 <= x9 + xadd9;
			y10 <= y9 + yadd9;
			z10 <= z9 - zadd9;
		end
		else begin
			x10 <= x9 - xadd9;
			y10 <= y9 - yadd9;
			z10 <= z9 + zadd9;
		end
	end
end

	always@(*)
		begin
			case(m10[0])
			1'b0:	begin	xadd10 = (y10>>>10); yadd10 = (x10>>>10); zadd10 = 20'b00000000000001000000;	end
			1'b1:	begin	xadd10 = 20'b0; yadd10 = (x10>>>11); zadd10 = 20'b00000000000000100000;	end
			default	begin	xadd10 = 20'b0; yadd10 = 20'b0; zadd10 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x11 <= 0;
		y11 <= 0;
		z11 <= 0;
		end
	else if(v10) begin
		if(y10[19]==1) begin
			x11 <= x10 + xadd10;
			y11 <= y10 + yadd10;
			z11 <= z10 - zadd10;
		end
		else begin
			x11 <= x10 - xadd10;
			y11 <= y10 - yadd10;
			z11 <= z10 + zadd10;
		end
	end
end

	always@(*)
		begin
			case(m11[0])
			1'b0:	begin	xadd11 = (y11>>>11); yadd11 = (x11>>>11); zadd11 = 20'b00000000000000100000;	end
			1'b1:	begin	xadd11 = 20'b0; yadd11 = (x11>>>12); zadd11 = 20'b00000000000000010000;	end
			default	begin	xadd11 = 20'b0; yadd11 = 20'b0; zadd11 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x12 <= 0;
		y12 <= 0;
		z12 <= 0;
		end
	else if(v11) begin
		if(y11[19]==1) begin
			x12 <= x11 + xadd11;
			y12 <= y11 + yadd11;
			z12 <= z11 - zadd11;
		end
		else begin
			x12 <= x11 - xadd11;
			y12 <= y11 - yadd11;
			z12 <= z11 + zadd11;
		end
	end
end

	always@(*)
		begin
			case(m12[0])
			1'b0:	begin	xadd12 = (y12>>>12); yadd12 = (x12>>>12); zadd12 = 20'b00000000000000010000;	end
			1'b1:	begin	xadd12 = 20'b0; yadd12 = (x12>>>13); zadd12 = 20'b00000000000000001000;	end
			default	begin	xadd12 = 20'b0; yadd12 = 20'b0; zadd12 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x13 <= 0;
		y13 <= 0;
		z13 <= 0;
		end
	else if(v12) begin
		if(y12[19]==1) begin
			x13 <= x12 + xadd12;
			y13 <= y12 + yadd12;
			z13 <= z12 - zadd12;
		end
		else begin
			x13 <= x12 - xadd12;
			y13 <= y12 - yadd12;
			z13 <= z12 + zadd12;
		end
	end
end

	always@(*)
		begin
			case(m13[0])
			1'b0:	begin	xadd13 = (y13>>>13); yadd13 = (x13>>>13); zadd13 = 20'b00000000000000001000;	end
			1'b1:	begin	xadd13 = 20'b0; yadd13 = (x13>>>14); zadd13 = 20'b00000000000000000100;	end
			default	begin	xadd13 = 20'b0; yadd13 = 20'b0; zadd13 = 20'b0;	end
			endcase
			end

	always@(posedge clk) begin
	if(!rst_n) begin
		x_lvhout <= 0;
		z_lvhout <= 0;
		end
	else if(v13) begin
		if(y13[19]==1) begin
			x_lvhout <= x13 + xadd13;
			z_lvhout <= z13 - zadd13;
		end
		else begin
			x_lvhout <= x13 - xadd13;
			z_lvhout <= z13 + zadd13;
		end
	end
end
	
    
    
    
    
endmodule
