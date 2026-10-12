`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/07 21:22:39
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
    input	[10:0]	x,
	input	[10:0]	y,
	input	[1:0]	m,
	//zreal: 11bits (0,1,10) 
	//zimg: 12bits (1,1,10) 
	output reg	[10:0]	zreal,
	output reg	[11:0]	zimg,
	input clk,
    input rst_n,
    input vdin,
    output reg vdout,
    input en	
    );
    
    reg v1,v2;
    
    reg [2:0] data_en;
	always@(posedge clk or negedge rst_n)
		if(!rst_n)
			data_en <= 3'b0;
		else if(en)
			data_en <= {data_en[1:0],en};
		else 
			data_en <= data_en;		

    
    wire        [22:0] R;
    assign      R = x*x + y*y;
    
    localparam		lnimgcoeff	=	480'b1000010110111110100111100_1001000000111011111000000_1001101001111001000100100_1010010000110110010001001_1010110010110011101100110_1011010001110001001111100_1011101111101110101111100_1100001010101100010111110_1100100011101010000011101_1100111010100111110011101_1101001111100101101000111_1101100010100011100011111_1101110011100001100110000_1101111110100000010000000_0000101110_0001100010_0010011010_0011010111_0100010100_0101010110_0110100001_0111101110_1001000100_1010011100_1100000010_1101101011_1111011101;
	
	wire		[479:0]	lnimg1	;
	assign		lnimg1	=	m[1]? lnimgcoeff	:	480'b0;

	wire		[9:0]	stp21	;	
	assign		stp21	=	lnimg1[129:120]	;
	wire		[10:0]	stb21	;	
	assign		stb21	=	x[9:0]	-	stp21;

	wire		[9:0]	stp22	;	
	assign		stp22	=	lnimg1[119:110]	;
	wire		[10:0]	stb22	;	
	assign		stb22	=	x[9:0]	-	stp22;

	wire		[9:0]	stp23	;	
	assign		stp23	=	lnimg1[109:100]	;
	wire		[10:0]	stb23	;	
	assign		stb23	=	x[9:0]	-	stp23;

	wire		[9:0]	stp24	;	
	assign		stp24	=	lnimg1[99:90]	;
	wire		[10:0]	stb24	;	
	assign		stb24	=	x[9:0]	-	stp24;

	wire		[9:0]	stp25	;	
	assign		stp25	=	lnimg1[89:80]	;
	wire		[10:0]	stb25	;	
	assign		stb25	=	x[9:0]	-	stp25;

	wire		[9:0]	stp26	;	
	assign		stp26	=	lnimg1[79:70]	;
	wire		[10:0]	stb26	;	
	assign		stb26	=	x[9:0]	-	stp26;

	wire		[9:0]	stp27	;	
	assign		stp27	=	lnimg1[69:60]	;
	wire		[10:0]	stb27	;	
	assign		stb27	=	x[9:0]	-	stp27;

	wire		[9:0]	stp28	;	
	assign		stp28	=	lnimg1[59:50]	;
	wire		[10:0]	stb28	;	
	assign		stb28	=	x[9:0]	-	stp28;

	wire		[9:0]	stp29	;	
	assign		stp29	=	lnimg1[49:40]	;
	wire		[10:0]	stb29	;	
	assign		stb29	=	x[9:0]	-	stp29;

	wire		[9:0]	stp210	;	
	assign		stp210	=	lnimg1[39:30]	;
	wire		[10:0]	stb210	;	
	assign		stb210	=	x[9:0]	-	stp210;

	wire		[9:0]	stp211	;	
	assign		stp211	=	lnimg1[29:20]	;
	wire		[10:0]	stb211	;	
	assign		stb211	=	x[9:0]	-	stp211;

	wire		[9:0]	stp212	;	
	assign		stp212	=	lnimg1[19:10]	;
	wire		[10:0]	stb212	;	
	assign		stb212	=	x[9:0]	-	stp212;

	wire		[9:0]	stp213	;	
	assign		stp213	=	lnimg1[9:0]	;
	wire		[10:0]	stb213	;	
	assign		stb213	=	x[9:0]	-	stp213;

	wire		[12:0]	lnimgs	;	
	assign		lnimgs	=	{stb21[10],stb22[10],stb23[10],stb24[10],stb25[10],stb26[10],stb27[10],stb28[10],stb29[10],stb210[10],stb211[10],stb212[10],stb213[10]};

	reg			[24:0]	lnimgc1	;

	always@(*)
	begin
		case(lnimgs)
			13'b0000000000000:		lnimgc1	=	lnimg1[154:130]	;
			13'b0000000000001:		lnimgc1	=	lnimg1[179:155]	;
			13'b0000000000011:		lnimgc1	=	lnimg1[204:180]	;
			13'b0000000000111:		lnimgc1	=	lnimg1[229:205]	;
			13'b0000000001111:		lnimgc1	=	lnimg1[254:230]	;
			13'b0000000011111:		lnimgc1	=	lnimg1[279:255]	;
			13'b0000000111111:		lnimgc1	=	lnimg1[304:280]	;
			13'b0000001111111:		lnimgc1	=	lnimg1[329:305]	;
			13'b0000011111111:		lnimgc1	=	lnimg1[354:330]	;
			13'b0000111111111:		lnimgc1	=	lnimg1[379:355]	;
			13'b0001111111111:		lnimgc1	=	lnimg1[404:380]	;
			13'b0011111111111:		lnimgc1	=	lnimg1[429:405]	;
			13'b0111111111111:		lnimgc1	=	lnimg1[454:430]	;
			13'b1111111111111:		lnimgc1	=	lnimg1[479:455]	;
			default		:		lnimgc1	=	25'b0;
		endcase
	end


	wire	signed	[9:0]	lnimgk1	;	
	wire		[14:0]	lnimgb1	;	
	assign		lnimgk1	=	lnimgc1[24:15]	;
	assign		lnimgb1	=	lnimgc1[14:0]	;

    wire    signed  [11:0]  signx;
    assign      signx   =   {1'b0,x};

	wire		[21:0]	lnimgkx	;	
	assign		lnimgkx	=	signx	*	lnimgk1	;

	wire		[15:0]	lnimg	;	
	assign		lnimg	=	lnimgkx[20:5]	+	lnimgb1	;

	wire		[13:0]	divx	;	
	assign		divx	=	lnimg[13:0]		;
    
    reg         [22:0]  R1       ;
    reg         [13:0]  divx1    ;
    reg         [10:0]  x1       ;
    reg         [10:0]  y1       ;
    reg         [1:0]   m1       ;

    
    always@(posedge clk or negedge rst_n)
		if(!rst_n) begin
        R1 <= 23'b0;
        divx1 <= 14'b0;
        x1 <= 11'b0;
        y1 <= 11'b0;
        m1 <= 2'b0;
        v1 <= 1'b0;
		end
		else if(data_en) begin
        R1 <= R;
        divx1 <= divx;
        x1 <= x;
        y1 <= y;
        m1 <= m;
		v1 <= vdin;
		end
		else begin
        R1 <= R1;
        divx1 <= divx1;
        x1 <= x1;
        y1 <= y1;
        m1 <= m1;
		v1 <= v1;
		end




	reg		[822:0]	rc	;
	always@(*)
	begin
		case(m1)
			2'b00		:		rc	=	823'b0101100010010111001000100_0101010000011000010111111_0101000000011001100101111_0100110000011010111100001_0100100010011100001111011_0100010100011101101011001_0100001000011111000001011_0011111100100000100000000_0011110010100001110110000_0011101000100011010011011_0011011110100100111001001_0011010110100110010001100_0011001110100111110000101_0011000110101001010111011_0010111110101011000110111_0010111000101100100001001_0000000000000000000000000_0000000000000000000000000_0000000000000000000000000_0010111000101100100001001_01000110101110011_01001110011111010_01010110011101101_01011111101000000_01101000111110010_01110011101001110_01111110100000000_10001010100100001_10010110000000000_10100011000011111_10110010000100101_10111111001011011_11001110010000010_11011111010110000_11110010010010111_11111111111111111_11111111111111111_11111111111111111_11111111111111111;
			2'b01		:		rc	=	823'b1100001110011111000111101_1100101000011101011001101_1101000000011011101110001_1101010110011010000101011_1101101010011000100000001_1101111100010110111111000_1110001100010101100011000_1110011010010100001101001_1110100110010010111110110_1110110010010001101010111_1110111100010000100000000_1111000110001111001111010_1111001110001110001001100_1111010100001101010001100_1111011010001100010101100_1111100000001011010100100_1111100100001010100101110_1111101000001001110011100_1111101100001000111100111_1111110000001000000000100_01000011101111001_01000111110000101_01001100010011011_01010001000110111_01010110011000110_01011100000100111_01100010010110001_01101000111101100_01110000000000001_01111000011000101_10000001010100110_10001100000110101_10010111000000001_10100001010111011_10101110000000001_10111101110100001_11001011010110111_11011100000000001_11110001101100111;
			2'b10		:		rc	=	823'b0011110111111011101110010_0011100011111101000101000_0011010001111110011010000_0011000001111111101100000_0010110010000000111001100_0010100100000010001101011_0010011000000011011011010_0010001100000100101111011_0010000010000101111011010_0001111000000111001101010_0001101110001000100110011_0001100110001001110011101_0001011110001011000111011_0001011000001100001010111_0001010010001101010011001_0001001100001110100001000_0001000110001111110101010_0001000010010000110001101_0000000000000000000000000_0001000010010000110001101_01000101011110010_01001011110000110_01010010010001111_01011001000100000_01100000001001011_01101000010111100_01110000011101100_01111010010011010_10000011110000010_10001110100111100_10011011011111100_10100111111011000_10110101110010100_11000010010100011_11010000111000010_11100001000000000_11110100000101100_11111111111111111_11111111111111111;
			default		:		rc	=	823'b0;
		endcase
	end

	wire		[16:0]	stp11	;	
	assign		stp11	=	rc[322:306]	;
	wire		[17:0]	stb11	;	
	assign		stb11	=	R1[22:6]	-	stp11;

	wire		[16:0]	stp12	;	
	assign		stp12	=	rc[305:289]	;
	wire		[17:0]	stb12	;	
	assign		stb12	=	R1[22:6]	-	stp12;

	wire		[16:0]	stp13	;	
	assign		stp13	=	rc[288:272]	;
	wire		[17:0]	stb13	;	
	assign		stb13	=	R1[22:6]	-	stp13;

	wire		[16:0]	stp14	;	
	assign		stp14	=	rc[271:255]	;
	wire		[17:0]	stb14	;	
	assign		stb14	=	R1[22:6]	-	stp14;

	wire		[16:0]	stp15	;	
	assign		stp15	=	rc[254:238]	;
	wire		[17:0]	stb15	;	
	assign		stb15	=	R1[22:6]	-	stp15;

	wire		[16:0]	stp16	;	
	assign		stp16	=	rc[237:221]	;
	wire		[17:0]	stb16	;	
	assign		stb16	=	R1[22:6]	-	stp16;

	wire		[16:0]	stp17	;	
	assign		stp17	=	rc[220:204]	;
	wire		[17:0]	stb17	;	
	assign		stb17	=	R1[22:6]	-	stp17;

	wire		[16:0]	stp18	;	
	assign		stp18	=	rc[203:187]	;
	wire		[17:0]	stb18	;	
	assign		stb18	=	R1[22:6]	-	stp18;

	wire		[16:0]	stp19	;	
	assign		stp19	=	rc[186:170]	;
	wire		[17:0]	stb19	;	
	assign		stb19	=	R1[22:6]	-	stp19;

	wire		[16:0]	stp110	;	
	assign		stp110	=	rc[169:153]	;
	wire		[17:0]	stb110	;	
	assign		stb110	=	R1[22:6]	-	stp110;

	wire		[16:0]	stp111	;	
	assign		stp111	=	rc[152:136]	;
	wire		[17:0]	stb111	;	
	assign		stb111	=	R1[22:6]	-	stp111;

	wire		[16:0]	stp112	;	
	assign		stp112	=	rc[135:119]	;
	wire		[17:0]	stb112	;	
	assign		stb112	=	R1[22:6]	-	stp112;

	wire		[16:0]	stp113	;	
	assign		stp113	=	rc[118:102]	;
	wire		[17:0]	stb113	;	
	assign		stb113	=	R1[22:6]	-	stp113;

	wire		[16:0]	stp114	;	
	assign		stp114	=	rc[101:85]	;
	wire		[17:0]	stb114	;	
	assign		stb114	=	R1[22:6]	-	stp114;

	wire		[16:0]	stp115	;	
	assign		stp115	=	rc[84:68]	;
	wire		[17:0]	stb115	;	
	assign		stb115	=	R1[22:6]	-	stp115;

	wire		[16:0]	stp116	;	
	assign		stp116	=	rc[67:51]	;
	wire		[17:0]	stb116	;	
	assign		stb116	=	R1[22:6]	-	stp116;

	wire		[16:0]	stp117	;	
	assign		stp117	=	rc[50:34]	;
	wire		[17:0]	stb117	;	
	assign		stb117	=	R1[22:6]	-	stp117;

	wire		[16:0]	stp118	;	
	assign		stp118	=	rc[33:17]	;
	wire		[17:0]	stb118	;	
	assign		stb118	=	R1[22:6]	-	stp118;

	wire		[16:0]	stp119	;	
	assign		stp119	=	rc[16:0]	;
	wire		[17:0]	stb119	;	
	assign		stb119	=	R1[22:6]	-	stp119;

	wire		[18:0]	rs	;	
	assign		rs	=	{stb11[17],stb12[17],stb13[17],stb14[17],stb15[17],stb16[17],stb17[17],stb18[17],stb19[17],stb110[17],stb111[17],stb112[17],stb113[17],stb114[17],stb115[17],stb116[17],stb117[17],stb118[17],stb119[17]};

	reg			[24:0]	rcoe	;

	always@(*)
	begin
		case(rs)
			19'b0000000000000000000:		rcoe	=	rc[347:323]	;
			19'b0000000000000000001:		rcoe	=	rc[372:348]	;
			19'b0000000000000000011:		rcoe	=	rc[397:373]	;
			19'b0000000000000000111:		rcoe	=	rc[422:398]	;
			19'b0000000000000001111:		rcoe	=	rc[447:423]	;
			19'b0000000000000011111:		rcoe	=	rc[472:448]	;
			19'b0000000000000111111:		rcoe	=	rc[497:473]	;
			19'b0000000000001111111:		rcoe	=	rc[522:498]	;
			19'b0000000000011111111:		rcoe	=	rc[547:523]	;
			19'b0000000000111111111:		rcoe	=	rc[572:548]	;
			19'b0000000001111111111:		rcoe	=	rc[597:573]	;
			19'b0000000011111111111:		rcoe	=	rc[622:598]	;
			19'b0000000111111111111:		rcoe	=	rc[647:623]	;
			19'b0000001111111111111:		rcoe	=	rc[672:648]	;
			19'b0000011111111111111:		rcoe	=	rc[697:673]	;
			19'b0000111111111111111:		rcoe	=	rc[722:698]	;
			19'b0001111111111111111:		rcoe	=	rc[747:723]	;
			19'b0011111111111111111:		rcoe	=	rc[772:748]	;
			19'b0111111111111111111:		rcoe	=	rc[797:773]	;
			19'b1111111111111111111:		rcoe	=	rc[822:798]	;
			default		:		rcoe	=	25'b0;
		endcase
	end


	wire	signed	[8:0]	k	;	
	wire	signed	[15:0]	b	;	
	assign		k	=	rcoe[24:16]	;
	assign		b	=	rcoe[15:0]	;

    wire    signed  [17:0]  Rx;
    assign      Rx = {1'b0,R1[22:6]};

	wire		[26:0]	kx	;	
	assign		kx	=	Rx	*	k	;

    wire        [16:0] pwlres1;
    assign      pwlres1 = kx[25:9] + {b[15],b};
    
    wire        [15:0]  pwlres      ;
    assign      pwlres  =   pwlres1[15:0];
    
    wire		[10:0]	lnimgmult	;
	assign		lnimgmult	=	m1[1]? y1	:	11'b0;
	
	wire        [24:0]  lnimgarc    ;
	assign      lnimgarc    =   divx1 * lnimgmult;
	
	wire        [14:0]  ydivx       ;
	assign      ydivx       =   lnimgarc[24:10];
	
    reg         [10:0]  adder1      ;
    reg                 rshift      ;
    reg         [15:0]  imgres      ;
    
    always@(*)
	begin
		case(m1)
			2'b00:   begin   adder1 = x1; rshift = 1; imgres = pwlres; end
			2'b01:	 begin   adder1 = 11'b0; rshift = 0; imgres = pwlres; end
			2'b10:   begin   adder1 = 11'b0; rshift = 0; imgres = {1'b0,ydivx}; end
			default:   begin   adder1 = 11'b0; rshift = 1'b0; imgres = 16'b0; end
		endcase
	end
	
	wire        [16:0]  realpre1       ;
	assign      realpre1       =   (pwlres + {adder1,4'b0}) >>rshift;     
	
	wire    signed    [15:0]  imgpre1        ;
	assign      imgpre1        =   (imgres - {adder1,4'b0}) >>rshift;
	
	reg         [15:0]  realpre       ;
    reg    signed     [15:0]  imgpre    ;
    reg         [10:0]  x2       ;
    reg         [10:0]  y2       ;
    reg         [1:0]   m2       ;

    
    always@(posedge clk or negedge rst_n)
		if(!rst_n) begin
        realpre <= 16'b0;
        imgpre <= 16'b0;
        x2 <= 11'b0;
        y2 <= 11'b0;
        m2 <= 2'b0;
        v2 <= 1'b0;
		end
		else if(data_en[1]) begin
        realpre <= realpre1[15:0];
        imgpre <= imgpre1;
        x2 <= x1; 
        y2 <= y1;
        m2 <= m1;
		v2 <= v1;
		end
		else begin
        realpre <= realpre;
        imgpre <= imgpre;
        x2 <= x2;
        y2 <= y2;
        m2 <= m2;
		v2 <= v2;
		end
	
	
	
	
	localparam		presqrtcoeff	=	250'b1110001010010000111011_1101010010011010100000_1100100010100011110010_1011110110101101010100_1011001110110111000000_1010101011000000101100_1010010111000110100110_0101011110100001_0110001101001011_0110111100111011_0111110001110010_1000101001111011_1001100101111001;
	
    wire		[15:0]	stp31	;	
	assign		stp31	=	presqrtcoeff[95:80]	;
	wire		[16:0]	stb31	;	
	assign		stb31	=	realpre[15:0]	-	stp31;

	wire		[15:0]	stp32	;	
	assign		stp32	=	presqrtcoeff[79:64]	;
	wire		[16:0]	stb32	;	
	assign		stb32	=	realpre[15:0]	-	stp32;

	wire		[15:0]	stp33	;	
	assign		stp33	=	presqrtcoeff[63:48]	;
	wire		[16:0]	stb33	;	
	assign		stb33	=	realpre[15:0]	-	stp33;

	wire		[15:0]	stp34	;	
	assign		stp34	=	presqrtcoeff[47:32]	;
	wire		[16:0]	stb34	;	
	assign		stb34	=	realpre[15:0]	-	stp34;

	wire		[15:0]	stp35	;	
	assign		stp35	=	presqrtcoeff[31:16]	;
	wire		[16:0]	stb35	;	
	assign		stb35	=	realpre[15:0]	-	stp35;

	wire		[15:0]	stp36	;	
	assign		stp36	=	presqrtcoeff[15:0]	;
	wire		[16:0]	stb36	;	
	assign		stb36	=	realpre[15:0]	-	stp36;

	wire		[5:0]	presqrts	;	
	assign		presqrts	=	{stb31[16],stb32[16],stb33[16],stb34[16],stb35[16],stb36[16]};

	reg			[21:0]	presqrtc	;

	always@(*)
	begin
		case(presqrts)
			6'b000000:		presqrtc	=	presqrtcoeff[117:96]	;
			6'b000001:		presqrtc	=	presqrtcoeff[139:118]	;
			6'b000011:		presqrtc	=	presqrtcoeff[161:140]	;
			6'b000111:		presqrtc	=	presqrtcoeff[183:162]	;
			6'b001111:		presqrtc	=	presqrtcoeff[205:184]	;
			6'b011111:		presqrtc	=	presqrtcoeff[227:206]	;
			6'b111111:		presqrtc	=	presqrtcoeff[249:228]	;
			default		:		presqrtc	=	22'b0;
		endcase
	end

	wire		[7:0]	presqrtk	;	
	wire		[13:0]	presqrtb	;	
	assign		presqrtk	=	presqrtc[21:14]	;
	assign		presqrtb	=	presqrtc[13:0]	;
    
    reg         [10:0]  kreal      ;
    reg         [13:0]  breal      ;
    
	always@(*)
	begin
		case(m2)
			2'b00:   begin   kreal = {2'b0,presqrtk,1'b0}; breal = presqrtb; end
			2'b01:	 begin   kreal = x2; breal = 14'b0; end
			2'b10:   begin   kreal = {1'b1,10'b0}; breal = 14'b0; end
			default:   begin   kreal = 11'b0; breal = 14'b0; end
		endcase
	end
	
		reg		[608:0]	preimgc	;
	always@(*)
	begin
		case(m2[1])
			1'b0		:		preimgc	=	609'b101011111100101110100011_100111011000110011111101_100011100000111001101000_100000001000111111101100_011101010001000101111101_011010110001001100100000_011000100101010011010100_010110101001011010011101_010101000001100001011111_000000000000000000000000_000000000000000000000000_000000000000000000000000_000000000000000000000000_000000000000000000000000_000000000000000000000000_010101000001100001011111_000100101111101_000101110111011_000111001100011_001000101111111_001010011110111_001100011111001_001110110010000_010001010111000_111111111111111_111111111111111_111111111111111_111111111111111_111111111111111_111111111111111_111111111111111;
			1'b1		:		preimgc	=	609'b011000110100010011100001_010111010000011010101110_010101110000100010100001_010100001100101011100101_010010101100110101001111_010001010000111111011001_001111110101001010100001_001110011101010110001001_001101001101100001101000_001100000001101101011011_001010111001111001100000_001001110110000101110011_001000111010010001011111_000111111110011110000011_000111000110101010101101_000110100010110011011100_010010011100011_010100110101111_010111001100110_011001110000110_011100010010101_011110111110101_100001110100111_100100110100001_100111110001110_101010111101000_101110010011100_110010000000000_110101100110100_111001111010100_111110100010000;
			default		:		preimgc	=	609'b0;
		endcase
	end

	wire		[14:0]	stp41	;	
	assign		stp41	=	preimgc[224:210]	;
	wire		[15:0]	stb41	;	
	assign		stb41	=	imgpre[14:0]	-	stp41;

	wire		[14:0]	stp42	;	
	assign		stp42	=	preimgc[209:195]	;
	wire		[15:0]	stb42	;	
	assign		stb42	=	imgpre[14:0]	-	stp42;

	wire		[14:0]	stp43	;	
	assign		stp43	=	preimgc[194:180]	;
	wire		[15:0]	stb43	;	
	assign		stb43	=	imgpre[14:0]	-	stp43;

	wire		[14:0]	stp44	;	
	assign		stp44	=	preimgc[179:165]	;
	wire		[15:0]	stb44	;	
	assign		stb44	=	imgpre[14:0]	-	stp44;

	wire		[14:0]	stp45	;	
	assign		stp45	=	preimgc[164:150]	;
	wire		[15:0]	stb45	;	
	assign		stb45	=	imgpre[14:0]	-	stp45;

	wire		[14:0]	stp46	;	
	assign		stp46	=	preimgc[149:135]	;
	wire		[15:0]	stb46	;	
	assign		stb46	=	imgpre[14:0]	-	stp46;

	wire		[14:0]	stp47	;	
	assign		stp47	=	preimgc[134:120]	;
	wire		[15:0]	stb47	;	
	assign		stb47	=	imgpre[14:0]	-	stp47;

	wire		[14:0]	stp48	;	
	assign		stp48	=	preimgc[119:105]	;
	wire		[15:0]	stb48	;	
	assign		stb48	=	imgpre[14:0]	-	stp48;

	wire		[14:0]	stp49	;	
	assign		stp49	=	preimgc[104:90]	;
	wire		[15:0]	stb49	;	
	assign		stb49	=	imgpre[14:0]	-	stp49;

	wire		[14:0]	stp410	;	
	assign		stp410	=	preimgc[89:75]	;
	wire		[15:0]	stb410	;	
	assign		stb410	=	imgpre[14:0]	-	stp410;

	wire		[14:0]	stp411	;	
	assign		stp411	=	preimgc[74:60]	;
	wire		[15:0]	stb411	;	
	assign		stb411	=	imgpre[14:0]	-	stp411;

	wire		[14:0]	stp412	;	
	assign		stp412	=	preimgc[59:45]	;
	wire		[15:0]	stb412	;	
	assign		stb412	=	imgpre[14:0]	-	stp412;

	wire		[14:0]	stp413	;	
	assign		stp413	=	preimgc[44:30]	;
	wire		[15:0]	stb413	;	
	assign		stb413	=	imgpre[14:0]	-	stp413;

	wire		[14:0]	stp414	;	
	assign		stp414	=	preimgc[29:15]	;
	wire		[15:0]	stb414	;	
	assign		stb414	=	imgpre[14:0]	-	stp414;

	wire		[14:0]	stp415	;	
	assign		stp415	=	preimgc[14:0]	;
	wire		[15:0]	stb415	;	
	assign		stb415	=	imgpre[14:0]	-	stp415;

	wire		[14:0]	preimgs	;	
	assign		preimgs	=	{stb41[15],stb42[15],stb43[15],stb44[15],stb45[15],stb46[15],stb47[15],stb48[15],stb49[15],stb410[15],stb411[15],stb412[15],stb413[15],stb414[15],stb415[15]};

	reg			[23:0]	preimgcoe	;

	always@(*)
	begin
		case(preimgs)
			15'b000000000000000:		preimgcoe	=	preimgc[248:225]	;
			15'b000000000000001:		preimgcoe	=	preimgc[272:249]	;
			15'b000000000000011:		preimgcoe	=	preimgc[296:273]	;
			15'b000000000000111:		preimgcoe	=	preimgc[320:297]	;
			15'b000000000001111:		preimgcoe	=	preimgc[344:321]	;
			15'b000000000011111:		preimgcoe	=	preimgc[368:345]	;
			15'b000000000111111:		preimgcoe	=	preimgc[392:369]	;
			15'b000000001111111:		preimgcoe	=	preimgc[416:393]	;
			15'b000000011111111:		preimgcoe	=	preimgc[440:417]	;
			15'b000000111111111:		preimgcoe	=	preimgc[464:441]	;
			15'b000001111111111:		preimgcoe	=	preimgc[488:465]	;
			15'b000011111111111:		preimgcoe	=	preimgc[512:489]	;
			15'b000111111111111:		preimgcoe	=	preimgc[536:513]	;
			15'b001111111111111:		preimgcoe	=	preimgc[560:537]	;
			15'b011111111111111:		preimgcoe	=	preimgc[584:561]	;
			15'b111111111111111:		preimgcoe	=	preimgc[608:585]	;
			default		:		preimgcoe	=	24'b0;
		endcase
	end


	wire		[9:0]	preimgk	;	
	wire		[13:0]	preimgb	;	
	assign		preimgk	=	preimgcoe[23:14]	;
	assign		preimgb	=	preimgcoe[13:0]	;

    reg     signed    [11:0]  kimg     ;
    reg         [13:0]  bimg      ;
    
    always@(*)
	begin
		case(m2[0])
			1'b0:   begin   kimg = {1'b0,preimgk,1'b0}; bimg = preimgb; end
			1'b1:	 begin   kimg = {1'b1,~y2+1}; bimg = 14'b0; end
			default:   begin   kimg = 12'b0; bimg = 14'b0; end
		endcase
	end
    
    wire        [26:0]  realkx;
    assign      realkx  =   kreal * realpre;
    
    wire        [14:0]  real_app;
    assign      real_app = realkx[24:10] + breal + 4'b1000;
    
    wire        [10:0]  zreal1;
    assign      zreal1   =   real_app[14:4];
    
    wire        [27:0]  imgkx;
    assign      imgkx  =   kimg * imgpre;
    
    wire        [15:0]  img_app;
    assign      img_app = imgkx[25:10] + bimg;
    
    wire		carrybit_img	;
	assign		carrybit_img = img_app[15]? (img_app[3]&(|img_app[2:0])) : img_app[3];
	
	wire        [11:0]  zimg1;
	assign      zimg1   =   img_app[15:4] + carrybit_img;
	
	
	
	always@(posedge clk or negedge rst_n)
		if(!rst_n)begin
		    zreal <= 11'b0;
		    zimg <= 12'b0;
			vdout <= 1'b0;
		end
		else if(data_en[2]) begin
		    zreal <= zreal1;
		    zimg <= zimg1;
			vdout <= v2;
		end
		else begin
		    zreal <= zreal;
		    zimg <= zimg;
			vdout <= vdout;
		end
    
endmodule
