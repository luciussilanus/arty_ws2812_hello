// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 18 20:53:35 2021
// Host        : Beast running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Xilinx/Projects/arty_ws2812_hello/arty_ws2812_hello.sim/sim_1/impl/func/xsim/top_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DIV_BY = "13'b1001110000111" *) (* ECO_CHECKSUM = "b96c5f1d" *) 
(* NotValidForBitStream *)
module top
   (clk,
    sw,
    sig_out);
  input clk;
  input [3:0]sw;
  output sig_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire sig_out;
  wire sig_out_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  ws2812 led
       (.clk(clk_IBUF_BUFG),
        .sig_out(sig_out_OBUF));
  OBUF sig_out_OBUF_inst
       (.I(sig_out_OBUF),
        .O(sig_out));
endmodule

module ws2812
   (sig_out,
    clk);
  output sig_out;
  input clk;

  wire clk;
  wire [7:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire \cnt[7]_i_4_n_0 ;
  wire \cnt[7]_i_5_n_0 ;
  wire \cnt[7]_i_6_n_0 ;
  wire \cnt[7]_i_7_n_0 ;
  wire \cnt[7]_i_8_n_0 ;
  wire \dbit[0]_i_1_n_0 ;
  wire \dbit[4]_i_1_n_0 ;
  wire [4:0]dbit_reg;
  wire p_0_in;
  wire [4:1]p_0_in__0;
  wire [7:1]p_1_in;
  wire sig_out;
  wire sig_out_i_1_n_0;
  wire sig_out_i_2_n_0;
  wire sig_out_i_3_n_0;
  wire sig_out_i_4_n_0;

  LUT6 #(
    .INIT(64'h00000000FFFFFBFF)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(cnt[7]),
        .I2(cnt[5]),
        .I3(cnt[1]),
        .I4(cnt[6]),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \cnt[0]_i_2 
       (.I0(dbit_reg[2]),
        .I1(dbit_reg[1]),
        .I2(dbit_reg[0]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cnt[2]),
        .O(\cnt[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \cnt[5]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[3]),
        .I2(\cnt[5]_i_2_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[5]_i_2 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[5]),
        .I2(\cnt[7]_i_4_n_0 ),
        .I3(cnt[4]),
        .I4(cnt[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_1 
       (.I0(dbit_reg[3]),
        .I1(dbit_reg[4]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \cnt[7]_i_2 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(cnt[7]),
        .I2(cnt[6]),
        .I3(cnt[4]),
        .I4(\cnt[7]_i_4_n_0 ),
        .I5(cnt[5]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hBFB0BFBF)) 
    \cnt[7]_i_3 
       (.I0(\cnt[7]_i_5_n_0 ),
        .I1(\cnt[7]_i_6_n_0 ),
        .I2(sig_out_i_3_n_0),
        .I3(\cnt[7]_i_7_n_0 ),
        .I4(\cnt[7]_i_8_n_0 ),
        .O(\cnt[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[7]_i_4 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .O(\cnt[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[7]_i_5 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[5]),
        .I3(cnt[4]),
        .O(\cnt[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \cnt[7]_i_6 
       (.I0(cnt[3]),
        .I1(cnt[7]),
        .I2(cnt[6]),
        .I3(cnt[2]),
        .O(\cnt[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[7]_i_7 
       (.I0(cnt[2]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .O(\cnt[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cnt[7]_i_8 
       (.I0(cnt[7]),
        .I1(cnt[5]),
        .I2(cnt[1]),
        .I3(cnt[6]),
        .I4(cnt[0]),
        .O(\cnt[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dbit[0]_i_1 
       (.I0(dbit_reg[0]),
        .O(\dbit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dbit[1]_i_1 
       (.I0(dbit_reg[1]),
        .I1(dbit_reg[0]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \dbit[2]_i_1 
       (.I0(dbit_reg[2]),
        .I1(dbit_reg[0]),
        .I2(dbit_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \dbit[3]_i_1 
       (.I0(dbit_reg[3]),
        .I1(dbit_reg[2]),
        .I2(dbit_reg[1]),
        .I3(dbit_reg[0]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'h15)) 
    \dbit[4]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(dbit_reg[4]),
        .I2(dbit_reg[3]),
        .O(\dbit[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \dbit[4]_i_2 
       (.I0(dbit_reg[4]),
        .I1(dbit_reg[0]),
        .I2(dbit_reg[1]),
        .I3(dbit_reg[2]),
        .I4(dbit_reg[3]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \dbit_reg[0] 
       (.C(clk),
        .CE(\dbit[4]_i_1_n_0 ),
        .D(\dbit[0]_i_1_n_0 ),
        .Q(dbit_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dbit_reg[1] 
       (.C(clk),
        .CE(\dbit[4]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(dbit_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dbit_reg[2] 
       (.C(clk),
        .CE(\dbit[4]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(dbit_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dbit_reg[3] 
       (.C(clk),
        .CE(\dbit[4]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(dbit_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dbit_reg[4] 
       (.C(clk),
        .CE(\dbit[4]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(dbit_reg[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0010001F)) 
    sig_out_i_1
       (.I0(cnt[6]),
        .I1(sig_out_i_2_n_0),
        .I2(sig_out_i_3_n_0),
        .I3(cnt[7]),
        .I4(sig_out_i_4_n_0),
        .O(sig_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    sig_out_i_2
       (.I0(cnt[5]),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .I4(cnt[0]),
        .I5(cnt[1]),
        .O(sig_out_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    sig_out_i_3
       (.I0(dbit_reg[0]),
        .I1(dbit_reg[1]),
        .I2(dbit_reg[2]),
        .O(sig_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    sig_out_i_4
       (.I0(cnt[6]),
        .I1(cnt[5]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(sig_out_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_out_i_1_n_0),
        .Q(sig_out),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
