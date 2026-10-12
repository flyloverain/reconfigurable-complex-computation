`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/10/08 19:50:16
// Design Name: 
// Module Name: top
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


module top(
    input            [10:0] x0,
    input            [10:0] y0,
	input            clk,
    input            rst_n,
    input            vd_in,   
    input            [1:0]  m,
	output  signed   [11:0] Re,
    output  signed   [11:0] Im,
	output           vd_out
    );
    
    wire                vdout_cv,vdout_lvh;
    wire signed [19:0]  x_cvout,z_cvout,z1endout,x_lvhout,z_lvhout,z1endout2,x_crout,y_crout,z2endout;
    reg  signed [19:0]  x_lvhin,y_lvhin,x_crin,z_crin,real_res,img_res;
    wire                carry_bit_Re,carry_bit_Im;
    wire        [1:0]   m_cvout,m_lvhout,m_crout;
    
    CV cv(
    .x_cvin         ({3'b0,x0,6'b0}),
    .y_cvin         ({3'b0,y0,6'b0}),
    .clk            (clk),
    .m_in           (m),
    .m_out          (m_cvout),
    .rst_n          (rst_n),
    .vin_cv         (vd_in),
    .vout_cv        (vdout_cv),
    .x_cvout        (x_cvout),
    .z_cvout        (z_cvout)       
    );
    
    always@(*)
		begin
			case(m_cvout)
			2'b00:	begin	x_lvhin = (x_cvout>>>2)+20'b00000101001110010101; y_lvhin = (x_cvout>>>2)-20'b00000101001110010101;	end
			2'b01:	begin	x_lvhin = x_cvout; y_lvhin = 20'b00010000000000000000;	end
			2'b10:	begin	x_lvhin = x_cvout+20'b00010000000000000000; y_lvhin = x_cvout-20'b00010000000000000000;	end
			default	begin	x_lvhin = 20'b0; y_lvhin = 20'b0;	end
			endcase
			end
    
    LVH lvh(
    .x_lvhin        (x_lvhin),
    .y_lvhin        (y_lvhin),
    .clk            (clk),
    .rst_n          (rst_n),
    .m_in           (m_cvout),
    .m_out          (m_lvhout),
    .z1endin        (z_cvout),
    .z1endout       (z1endout),
    .vin_lvh        (vdout_cv),
    .vout_lvh       (vdout_lvh),
    .x_lvhout       (x_lvhout),
    .z_lvhout       (z_lvhout)       
    );
    
    always@(*)
		begin
			case(m_lvhout[0])
			1'b0:	begin	x_crin = x_lvhout; z_crin = (z1endout>>>1);	end
			1'b1:	begin	x_crin = z_lvhout; z_crin = ~z1endout+1;	end
			default	begin	x_crin = 20'b0; z_crin = 20'b0;	end
			endcase
			end
			
	CR cr(
    .x_crin         (x_crin),
    .z_crin         (z_crin),
    .clk            (clk),
    .rst_n          (rst_n),
    .m_in           (m_lvhout),
    .m_out          (m_crout),
    .z1endin        (z1endout),
    .z1endout       (z1endout2),
    .z2endin        (z_lvhout),
    .z2endout       (z2endout),
    .vin_cr         (vdout_lvh),
    .vout_cr        (vd_out),
    .x_crout        (x_crout),
    .y_crout        (y_crout)       
    );
    
    always@(*)
		begin
			case(m_crout[1])
			1'b0:	begin	real_res = x_crout; img_res = y_crout;	end
			1'b1:	begin	real_res = ((z2endout-20'b00000011111111011001)<<<1); img_res = z1endout2;	end
			default	begin	real_res = 20'b0; img_res = 20'b0;	end
			endcase
			end
			
	assign carry_bit_Re = real_res[19] ? ( real_res[5] & ( |real_res[4:0] ) ) : real_res[5] ;
	assign carry_bit_Im = img_res[19] ? ( img_res[5] & ( |img_res[4:0] ) ) : img_res[5] ;
	
	assign Re = real_res[17:6] + carry_bit_Re;
	assign Im = img_res[17:6] + carry_bit_Im;
    
    
    
endmodule
