
module add_half_0 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_15 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_0 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_0 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_15 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_14 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_13 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_7 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_14 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_13 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_12 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_11 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_6 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_12 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_11 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_10 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_9 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_5 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_10 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_9 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_8 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_7 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_4 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_8 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_7 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_6 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_half_5 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_3 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_6 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_5 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_4 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CAN2X1 U1 ( .A(b), .B(a), .Z(cout) );
  CEOX1 U2 ( .A(b), .B(a), .Z(sum) );
endmodule


module add_half_3 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_2 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_4 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_3 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module add_half_2 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CAN2X1 U1 ( .A(b), .B(a), .Z(cout) );
  CEOX1 U2 ( .A(b), .B(a), .Z(sum) );
endmodule


module add_half_1 ( sum, cout, a, b );
  input a, b;
  output sum, cout;


  CEOX1 U1 ( .A(b), .B(a), .Z(sum) );
  CAN2X1 U2 ( .A(b), .B(a), .Z(cout) );
endmodule


module add_full_1 ( sum, cout, a, b, cin );
  input a, b, cin;
  output sum, cout;
  wire   w1, w2, w3;

  COR2X1 U3 ( .A(w2), .B(w3), .Z(cout) );
  add_half_2 U1 ( .sum(w1), .cout(w2), .a(a), .b(b) );
  add_half_1 U2 ( .sum(sum), .cout(w3), .a(cin), .b(w1) );
endmodule


module RCA_8 ( sum, cout, a, b, cin, cin7 );
  output [7:0] sum;
  input [7:0] a;
  input [7:0] b;
  input cin;
  output cout, cin7;
  wire   cin1, cin2, cin3, cin4, cin5, cin6;

  add_full_0 U1 ( .sum(sum[0]), .cout(cin1), .a(a[0]), .b(b[0]), .cin(cin) );
  add_full_7 U2 ( .sum(sum[1]), .cout(cin2), .a(a[1]), .b(b[1]), .cin(cin1) );
  add_full_6 U3 ( .sum(sum[2]), .cout(cin3), .a(a[2]), .b(b[2]), .cin(cin2) );
  add_full_5 U4 ( .sum(sum[3]), .cout(cin4), .a(a[3]), .b(b[3]), .cin(cin3) );
  add_full_4 U5 ( .sum(sum[4]), .cout(cin5), .a(a[4]), .b(b[4]), .cin(cin4) );
  add_full_3 U6 ( .sum(sum[5]), .cout(cin6), .a(a[5]), .b(b[5]), .cin(cin5) );
  add_full_2 U7 ( .sum(sum[6]), .cout(cin7), .a(a[6]), .b(b[6]), .cin(cin6) );
  add_full_1 U8 ( .sum(sum[7]), .cout(cout), .a(a[7]), .b(b[7]), .cin(cin7) );
endmodule


module ALU ( sum, cout, a, b, cin, ov );
  output [7:0] sum;
  input [7:0] a;
  input [7:0] b;
  input cin;
  output cout, ov;
  wire   cin7, n1;
  wire   [7:0] d;

  RCA_8 n1_inst ( .sum(sum), .cout(cout), .a(a), .b(d), .cin(n1), .cin7(cin7)
         );
  CEOX1 U1 ( .A(n1), .B(b[0]), .Z(d[0]) );
  CEOX1 U2 ( .A(n1), .B(b[1]), .Z(d[1]) );
  CEOX1 U3 ( .A(n1), .B(b[2]), .Z(d[2]) );
  CEOX1 U4 ( .A(n1), .B(b[3]), .Z(d[3]) );
  CEOX1 U5 ( .A(n1), .B(b[4]), .Z(d[4]) );
  CEOX1 U6 ( .A(n1), .B(b[5]), .Z(d[5]) );
  CEOX1 U7 ( .A(n1), .B(b[6]), .Z(d[6]) );
  CEOX1 U8 ( .A(n1), .B(b[7]), .Z(d[7]) );
  CNIVX1 U9 ( .A(cin), .Z(n1) );
  CEOX1 U10 ( .A(cout), .B(cin7), .Z(ov) );
endmodule


module SCALAR_PROCESSOR_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  CHA1X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  CHA1X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CHA1X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CHA1X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CHA1X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CHA1X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CIVX2 U1 ( .A(A[0]), .Z(SUM[0]) );
  CEOX1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module SCALAR_PROCESSOR ( dat, addr, rd, wrt, clk, rst );
  inout [7:0] dat;
  output [7:0] addr;
  input clk, rst;
  output rd, wrt;
  wire   N64, N65, N66, N67, OPRN, cout, ov, N92, N93, N94, N95, \ARRAY[3][7] ,
         \ARRAY[3][6] , \ARRAY[3][5] , \ARRAY[3][4] , \ARRAY[3][3] ,
         \ARRAY[3][2] , \ARRAY[3][1] , \ARRAY[3][0] , \ARRAY[2][7] ,
         \ARRAY[2][6] , \ARRAY[2][5] , \ARRAY[2][4] , \ARRAY[2][3] ,
         \ARRAY[2][2] , \ARRAY[2][1] , \ARRAY[2][0] , \ARRAY[1][7] ,
         \ARRAY[1][6] , \ARRAY[1][5] , \ARRAY[1][4] , \ARRAY[1][3] ,
         \ARRAY[1][2] , \ARRAY[1][1] , \ARRAY[1][0] , \ARRAY[0][7] ,
         \ARRAY[0][6] , \ARRAY[0][5] , \ARRAY[0][4] , \ARRAY[0][3] ,
         \ARRAY[0][2] , \ARRAY[0][1] , \ARRAY[0][0] , N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N245, N246, N247, N248, N249, N250, N251, N253, N470, n18, n19,
         n21, n22, n23, n25, n27, n29, n31, n33, n35, n37, n39, n40, n42, n43,
         n44, n46, n48, n50, n51, n54, n55, n58, n59, n62, n63, n64, n66, n67,
         n68, n70, n71, n72, n74, n75, n76, n79, n81, n83, n84, n85, n86, n88,
         n89, n90, n91, n93, n94, n96, n97, n100, n101, n105, n106, n111, n113,
         n114, n116, n117, n119, n120, n121, n122, n124, n126, n127, n129,
         n131, n132, n134, n136, n137, n138, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n150, n151, n154, n156, n157, n159, n160,
         n161, n162, n166, n167, n168, n170, n171, n172, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351;
  wire   [7:0] ALU_OUT;
  wire   [7:0] OP1;
  wire   [7:0] OP2;
  wire   [7:0] dat_T;
  wire   [2:0] state;
  wire   [2:0] n_state;
  wire   [3:0] opcode;
  wire   [3:0] FR;
  tri   [7:0] dat;

  CAN4X1 U74 ( .A(n_state[0]), .B(n_state[1]), .C(n86), .D(n318), .Z(n85) );
  CND2IX1 U92 ( .B(n90), .A(n312), .Z(n93) );
  CAOR2X1 U124 ( .A(\ARRAY[1][7] ), .B(n301), .C(n141), .D(n140), .Z(n208) );
  CAOR2X1 U126 ( .A(\ARRAY[1][5] ), .B(n301), .C(n143), .D(n140), .Z(n210) );
  CAOR2X1 U127 ( .A(\ARRAY[1][4] ), .B(n301), .C(n144), .D(n140), .Z(n211) );
  CAOR2X1 U130 ( .A(\ARRAY[1][1] ), .B(n301), .C(n140), .D(n147), .Z(n214) );
  CAOR2X1 U135 ( .A(n300), .B(\ARRAY[0][7] ), .C(n141), .D(n150), .Z(n216) );
  CAOR2X1 U139 ( .A(n300), .B(\ARRAY[0][6] ), .C(n142), .D(n150), .Z(n217) );
  CAOR2X1 U143 ( .A(n300), .B(\ARRAY[0][5] ), .C(n143), .D(n150), .Z(n218) );
  CAOR2X1 U147 ( .A(n300), .B(\ARRAY[0][4] ), .C(n144), .D(n150), .Z(n219) );
  CAOR2X1 U151 ( .A(n300), .B(\ARRAY[0][3] ), .C(n145), .D(n150), .Z(n220) );
  CAOR2X1 U155 ( .A(n300), .B(\ARRAY[0][2] ), .C(n146), .D(n150), .Z(n221) );
  CAOR2X1 U159 ( .A(n300), .B(\ARRAY[0][1] ), .C(n147), .D(n150), .Z(n222) );
  CAOR2X1 U163 ( .A(n300), .B(\ARRAY[0][0] ), .C(n148), .D(n150), .Z(n223) );
  CAOR2X1 U172 ( .A(n309), .B(N106), .C(n40), .D(dat_T[0]), .Z(n224) );
  CAOR2X1 U173 ( .A(n309), .B(N105), .C(n40), .D(dat_T[1]), .Z(n225) );
  CAOR2X1 U174 ( .A(n309), .B(N104), .C(n40), .D(dat_T[2]), .Z(n226) );
  CAOR2X1 U175 ( .A(n309), .B(N103), .C(n40), .D(dat_T[3]), .Z(n227) );
  COR8X1 U177 ( .A(n154), .B(ALU_OUT[0]), .C(ALU_OUT[1]), .D(ALU_OUT[2]), .E(
        ALU_OUT[3]), .F(ALU_OUT[4]), .G(n157), .H(ALU_OUT[5]), .Z(n156) );
  COR2X1 U178 ( .A(ALU_OUT[7]), .B(ALU_OUT[6]), .Z(n157) );
  CAOR2X1 U180 ( .A(n154), .B(FR[2]), .C(n308), .D(ALU_OUT[7]), .Z(n229) );
  CAOR2X1 U184 ( .A(FR[0]), .B(n154), .C(ov), .D(n308), .Z(n231) );
  CAOR2X1 U188 ( .A(OP2[7]), .B(n162), .C(n307), .D(N107), .Z(n232) );
  CAOR2X1 U189 ( .A(OP2[6]), .B(n162), .C(n307), .D(N108), .Z(n233) );
  CAOR2X1 U190 ( .A(OP2[5]), .B(n162), .C(n307), .D(N109), .Z(n234) );
  CAOR2X1 U191 ( .A(OP2[4]), .B(n162), .C(n307), .D(N110), .Z(n235) );
  CAOR2X1 U192 ( .A(OP2[3]), .B(n162), .C(n307), .D(N111), .Z(n236) );
  CAOR2X1 U193 ( .A(OP2[2]), .B(n162), .C(n307), .D(N112), .Z(n237) );
  CAOR2X1 U194 ( .A(OP2[1]), .B(n162), .C(n307), .D(N113), .Z(n238) );
  CAOR2X1 U195 ( .A(OP2[0]), .B(n162), .C(n307), .D(N114), .Z(n239) );
  CAOR2X1 U196 ( .A(OP1[7]), .B(n162), .C(N99), .D(n307), .Z(n240) );
  CAOR2X1 U197 ( .A(OP1[6]), .B(n162), .C(N100), .D(n307), .Z(n241) );
  CAOR2X1 U198 ( .A(OP1[5]), .B(n162), .C(N101), .D(n307), .Z(n242) );
  CAOR2X1 U199 ( .A(OP1[4]), .B(n162), .C(N102), .D(n307), .Z(n243) );
  CAOR2X1 U200 ( .A(OP1[3]), .B(n162), .C(n307), .D(N103), .Z(n244) );
  CAOR2X1 U201 ( .A(OP1[2]), .B(n162), .C(n307), .D(N104), .Z(n245) );
  CAOR2X1 U202 ( .A(OP1[1]), .B(n162), .C(n307), .D(N105), .Z(n246) );
  CAOR2X1 U203 ( .A(OP1[0]), .B(n162), .C(n307), .D(N106), .Z(n247) );
  CAOR2X1 U204 ( .A(n162), .B(OPRN), .C(n310), .D(n307), .Z(n248) );
  CAOR2X1 U209 ( .A(n309), .B(N99), .C(n40), .D(dat_T[7]), .Z(n249) );
  CAOR2X1 U210 ( .A(n309), .B(N100), .C(n40), .D(dat_T[6]), .Z(n250) );
  CAOR2X1 U211 ( .A(n309), .B(N101), .C(n40), .D(dat_T[5]), .Z(n251) );
  CAOR2X1 U212 ( .A(n309), .B(N102), .C(n40), .D(dat_T[4]), .Z(n252) );
  CAOR2X1 U219 ( .A(n319), .B(n317), .C(n168), .D(n167), .Z(N92) );
  CAOR1X1 U223 ( .A(opcode[2]), .B(n137), .C(n88), .Z(n170) );
  CAN3X2 U170 ( .A(n94), .B(n311), .C(n154), .Z(n81) );
  ALU alu23 ( .sum(ALU_OUT), .cout(cout), .a(OP1), .b(OP2), .cin(OPRN), .ov(ov) );
  SCALAR_PROCESSOR_DW01_inc_0 r330 ( .A({\ARRAY[3][7] , \ARRAY[3][6] , 
        \ARRAY[3][5] , \ARRAY[3][4] , \ARRAY[3][3] , \ARRAY[3][2] , 
        \ARRAY[3][1] , \ARRAY[3][0] }), .SUM({N253, N251, N250, N249, N248, 
        N247, N246, N245}) );
  CFD2QX1 wrt_reg ( .D(n309), .CP(clk), .CD(n299), .Q(wrt) );
  CFD2QXL \ARRAY_reg[2][7]  ( .D(n200), .CP(clk), .CD(n299), .Q(\ARRAY[2][7] )
         );
  CFD2QXL \ARRAY_reg[2][6]  ( .D(n201), .CP(clk), .CD(n299), .Q(\ARRAY[2][6] )
         );
  CFD2QXL \ARRAY_reg[1][4]  ( .D(n211), .CP(clk), .CD(n299), .Q(\ARRAY[1][4] )
         );
  CFD2QXL \ARRAY_reg[1][5]  ( .D(n210), .CP(clk), .CD(n299), .Q(\ARRAY[1][5] )
         );
  CFD2QXL \ARRAY_reg[1][6]  ( .D(n209), .CP(clk), .CD(n299), .Q(\ARRAY[1][6] )
         );
  CFD2QXL \ARRAY_reg[1][7]  ( .D(n208), .CP(clk), .CD(n299), .Q(\ARRAY[1][7] )
         );
  CFD2QXL \ARRAY_reg[1][3]  ( .D(n212), .CP(clk), .CD(n299), .Q(\ARRAY[1][3] )
         );
  CFD2QXL \ARRAY_reg[1][2]  ( .D(n213), .CP(clk), .CD(n299), .Q(\ARRAY[1][2] )
         );
  CFD2QXL \ARRAY_reg[1][1]  ( .D(n214), .CP(clk), .CD(n299), .Q(\ARRAY[1][1] )
         );
  CFD2QXL \ARRAY_reg[1][0]  ( .D(n215), .CP(clk), .CD(n299), .Q(\ARRAY[1][0] )
         );
  CFD2QXL \FR_reg[0]  ( .D(n231), .CP(clk), .CD(n299), .Q(FR[0]) );
  CFD2QXL \FR_reg[2]  ( .D(n229), .CP(clk), .CD(n299), .Q(FR[2]) );
  CFD2QXL \ARRAY_reg[2][3]  ( .D(n204), .CP(clk), .CD(n299), .Q(\ARRAY[2][3] )
         );
  CFD2QXL \ARRAY_reg[2][2]  ( .D(n205), .CP(clk), .CD(n299), .Q(\ARRAY[2][2] )
         );
  CFD2QXL \ARRAY_reg[2][1]  ( .D(n206), .CP(clk), .CD(n299), .Q(\ARRAY[2][1] )
         );
  CFD2QXL \ARRAY_reg[2][0]  ( .D(n207), .CP(clk), .CD(n299), .Q(\ARRAY[2][0] )
         );
  CFD2QXL \FR_reg[3]  ( .D(n228), .CP(clk), .CD(n299), .Q(FR[3]) );
  CFD2QXL \FR_reg[1]  ( .D(n230), .CP(clk), .CD(n299), .Q(FR[1]) );
  CFD2QXL \OP2_reg[0]  ( .D(n239), .CP(clk), .CD(n299), .Q(OP2[0]) );
  CFD2QXL \OP2_reg[1]  ( .D(n238), .CP(clk), .CD(n299), .Q(OP2[1]) );
  CFD2QXL \OP2_reg[2]  ( .D(n237), .CP(clk), .CD(n299), .Q(OP2[2]) );
  CFD2QXL \OP2_reg[3]  ( .D(n236), .CP(clk), .CD(n299), .Q(OP2[3]) );
  CFD2QXL \OP2_reg[4]  ( .D(n235), .CP(clk), .CD(n299), .Q(OP2[4]) );
  CFD2QXL \OP2_reg[5]  ( .D(n234), .CP(clk), .CD(n299), .Q(OP2[5]) );
  CFD2QXL \OP2_reg[6]  ( .D(n233), .CP(clk), .CD(n299), .Q(OP2[6]) );
  CFD2QXL \OP2_reg[7]  ( .D(n232), .CP(clk), .CD(n299), .Q(OP2[7]) );
  CFD2QXL \OP1_reg[0]  ( .D(n247), .CP(clk), .CD(n299), .Q(OP1[0]) );
  CFD2QXL \OP1_reg[1]  ( .D(n246), .CP(clk), .CD(n299), .Q(OP1[1]) );
  CFD2QXL \OP1_reg[2]  ( .D(n245), .CP(clk), .CD(n299), .Q(OP1[2]) );
  CFD2QXL \OP1_reg[3]  ( .D(n244), .CP(clk), .CD(n299), .Q(OP1[3]) );
  CFD2QXL \OP1_reg[4]  ( .D(n243), .CP(clk), .CD(n299), .Q(OP1[4]) );
  CFD2QXL \OP1_reg[5]  ( .D(n242), .CP(clk), .CD(n299), .Q(OP1[5]) );
  CFD2QXL \OP1_reg[6]  ( .D(n241), .CP(clk), .CD(n299), .Q(OP1[6]) );
  CFD2QXL \OP1_reg[7]  ( .D(n240), .CP(clk), .CD(n299), .Q(OP1[7]) );
  CFD2QXL \ARRAY_reg[3][4]  ( .D(n195), .CP(clk), .CD(n299), .Q(\ARRAY[3][4] )
         );
  CFD2QXL \ARRAY_reg[3][5]  ( .D(n194), .CP(clk), .CD(n299), .Q(\ARRAY[3][5] )
         );
  CFD2QXL \ARRAY_reg[3][6]  ( .D(n193), .CP(clk), .CD(n299), .Q(\ARRAY[3][6] )
         );
  CFD2QXL \ARRAY_reg[0][4]  ( .D(n219), .CP(clk), .CD(n299), .Q(\ARRAY[0][4] )
         );
  CFD2QXL \ARRAY_reg[0][5]  ( .D(n218), .CP(clk), .CD(n299), .Q(\ARRAY[0][5] )
         );
  CFD2QXL \ARRAY_reg[0][6]  ( .D(n217), .CP(clk), .CD(n299), .Q(\ARRAY[0][6] )
         );
  CFD2QXL \ARRAY_reg[0][7]  ( .D(n216), .CP(clk), .CD(n299), .Q(\ARRAY[0][7] )
         );
  CFD2QXL \ARRAY_reg[3][7]  ( .D(n192), .CP(clk), .CD(n299), .Q(\ARRAY[3][7] )
         );
  CFD2QXL \state_reg[0]  ( .D(n_state[0]), .CP(clk), .CD(n299), .Q(state[0])
         );
  CFD2QXL \ARRAY_reg[0][3]  ( .D(n220), .CP(clk), .CD(n299), .Q(\ARRAY[0][3] )
         );
  CFD2QXL \ARRAY_reg[0][2]  ( .D(n221), .CP(clk), .CD(n299), .Q(\ARRAY[0][2] )
         );
  CFD2QXL \ARRAY_reg[0][1]  ( .D(n222), .CP(clk), .CD(n299), .Q(\ARRAY[0][1] )
         );
  CFD2QXL \ARRAY_reg[0][0]  ( .D(n223), .CP(clk), .CD(n299), .Q(\ARRAY[0][0] )
         );
  CLDP1QXL \n_state_reg[1]  ( .G(N94), .D(N93), .Q(n_state[1]) );
  CFD2QXL \ARRAY_reg[3][1]  ( .D(n198), .CP(clk), .CD(n299), .Q(\ARRAY[3][1] )
         );
  CFD2QXL \ARRAY_reg[3][3]  ( .D(n196), .CP(clk), .CD(n299), .Q(\ARRAY[3][3] )
         );
  CFD2QXL \state_reg[1]  ( .D(n_state[1]), .CP(clk), .CD(n299), .Q(state[1])
         );
  CLDP1QXL \n_state_reg[2]  ( .G(N94), .D(N95), .Q(n_state[2]) );
  CFD2QXL \opcode_reg[1]  ( .D(n180), .CP(clk), .CD(n299), .Q(opcode[1]) );
  CFD2QXL OPRN_reg ( .D(n248), .CP(clk), .CD(n299), .Q(OPRN) );
  CFD2QXL \state_reg[2]  ( .D(n_state[2]), .CP(clk), .CD(n299), .Q(state[2])
         );
  CFD2QXL \opcode_reg[0]  ( .D(n182), .CP(clk), .CD(n299), .Q(opcode[0]) );
  CFD2QXL \S_reg[1]  ( .D(n176), .CP(clk), .CD(n299), .Q(N67) );
  CFD2QXL \opcode_reg[2]  ( .D(n179), .CP(clk), .CD(n299), .Q(opcode[2]) );
  CLDP1QXL \n_state_reg[0]  ( .G(N94), .D(N92), .Q(n_state[0]) );
  CFD2QXL \opcode_reg[3]  ( .D(n181), .CP(clk), .CD(n299), .Q(opcode[3]) );
  CFD2QXL \S_reg[0]  ( .D(n175), .CP(clk), .CD(n299), .Q(N66) );
  CFD2QXL \D_reg[1]  ( .D(n178), .CP(clk), .CD(n299), .Q(N65) );
  CFD2QXL \D_reg[0]  ( .D(n177), .CP(clk), .CD(n299), .Q(N64) );
  CTSX2 \dat_tri[2]  ( .A(dat_T[2]), .E(n174), .Z(dat[2]) );
  CTSX2 \dat_tri[0]  ( .A(dat_T[0]), .E(n174), .Z(dat[0]) );
  CTSX2 \dat_tri[5]  ( .A(dat_T[5]), .E(n174), .Z(dat[5]) );
  CFD2QXL \addr_reg[1]  ( .D(n190), .CP(clk), .CD(n299), .Q(addr[1]) );
  CFD2QXL \addr_reg[2]  ( .D(n189), .CP(clk), .CD(n299), .Q(addr[2]) );
  CFD2QXL \addr_reg[3]  ( .D(n188), .CP(clk), .CD(n299), .Q(addr[3]) );
  CFD2QXL \addr_reg[4]  ( .D(n187), .CP(clk), .CD(n299), .Q(addr[4]) );
  CFD2QXL \addr_reg[5]  ( .D(n186), .CP(clk), .CD(n299), .Q(addr[5]) );
  CFD2QXL \addr_reg[6]  ( .D(n185), .CP(clk), .CD(n299), .Q(addr[6]) );
  CFD2QXL \addr_reg[7]  ( .D(n184), .CP(clk), .CD(n299), .Q(addr[7]) );
  CFD2QXL \addr_reg[0]  ( .D(n191), .CP(clk), .CD(n299), .Q(addr[0]) );
  CFD2QXL \dat_T_reg[4]  ( .D(n252), .CP(clk), .CD(n299), .Q(dat_T[4]) );
  CFD2QXL \dat_T_reg[5]  ( .D(n251), .CP(clk), .CD(n299), .Q(dat_T[5]) );
  CFD2QXL \dat_T_reg[6]  ( .D(n250), .CP(clk), .CD(n299), .Q(dat_T[6]) );
  CFD2QXL \dat_T_reg[7]  ( .D(n249), .CP(clk), .CD(n299), .Q(dat_T[7]) );
  CFD2QXL \dat_T_reg[3]  ( .D(n227), .CP(clk), .CD(n299), .Q(dat_T[3]) );
  CFD2QXL \dat_T_reg[2]  ( .D(n226), .CP(clk), .CD(n299), .Q(dat_T[2]) );
  CFD2QXL \dat_T_reg[1]  ( .D(n225), .CP(clk), .CD(n299), .Q(dat_T[1]) );
  CFD2QXL \dat_T_reg[0]  ( .D(n224), .CP(clk), .CD(n299), .Q(dat_T[0]) );
  CTSX2 \dat_tri[3]  ( .A(dat_T[3]), .E(n174), .Z(dat[3]) );
  CFD2QX1 rd_reg ( .D(N470), .CP(clk), .CD(n299), .Q(rd) );
  CFD2QXL \ARRAY_reg[3][2]  ( .D(n197), .CP(clk), .CD(n299), .Q(\ARRAY[3][2] )
         );
  CFD2QXL \ARRAY_reg[3][0]  ( .D(n199), .CP(clk), .CD(n299), .Q(\ARRAY[3][0] )
         );
  CTSX2 \dat_tri[6]  ( .A(dat_T[6]), .E(n174), .Z(dat[6]) );
  CTSX2 \dat_tri[1]  ( .A(dat_T[1]), .E(n174), .Z(dat[1]) );
  CFD2QX2 \ARRAY_reg[2][4]  ( .D(n203), .CP(clk), .CD(n299), .Q(\ARRAY[2][4] )
         );
  CTSX2 \dat_tri[7]  ( .A(dat_T[7]), .E(n174), .Z(dat[7]) );
  CTSX2 \dat_tri[4]  ( .A(dat_T[4]), .E(n174), .Z(dat[4]) );
  CFD2QX2 \ARRAY_reg[2][5]  ( .D(n202), .CP(clk), .CD(n299), .Q(\ARRAY[2][5] )
         );
  COAN1X1 U245 ( .A(n94), .B(n334), .C(n96), .Z(n253) );
  COND1XL U246 ( .A(n94), .B(n334), .C(n96), .Z(n254) );
  CANR2X1 U247 ( .A(dat[5]), .B(n151), .C(n308), .D(ALU_OUT[5]), .Z(n105) );
  CANR2X1 U248 ( .A(dat[5]), .B(n151), .C(n308), .D(ALU_OUT[5]), .Z(n255) );
  CANR2X2 U249 ( .A(dat[7]), .B(n151), .C(n308), .D(ALU_OUT[7]), .Z(n96) );
  CND2IX1 U250 ( .B(n256), .A(n75), .Z(n199) );
  COND1XL U251 ( .A(n343), .B(n42), .C(n74), .Z(n256) );
  CND2IX1 U252 ( .B(n257), .A(n67), .Z(n197) );
  COND1XL U253 ( .A(n337), .B(n42), .C(n66), .Z(n257) );
  COR2X1 U254 ( .A(n94), .B(n328), .Z(n258) );
  CND2X1 U255 ( .A(n258), .B(n260), .Z(n290) );
  CANR2X1 U256 ( .A(dat[4]), .B(n151), .C(n308), .D(ALU_OUT[4]), .Z(n260) );
  COR2X1 U257 ( .A(n94), .B(n330), .Z(n259) );
  CND2X1 U258 ( .A(n259), .B(n255), .Z(n289) );
  CANR2X1 U259 ( .A(dat[4]), .B(n151), .C(n308), .D(ALU_OUT[4]), .Z(n111) );
  CND2X1 U260 ( .A(\ARRAY[1][0] ), .B(n301), .Z(n261) );
  CND2XL U261 ( .A(n140), .B(n148), .Z(n262) );
  CND2X1 U262 ( .A(n261), .B(n262), .Z(n215) );
  COAN1X1 U263 ( .A(n335), .B(n42), .C(n43), .Z(n263) );
  CND2X1 U264 ( .A(n263), .B(n44), .Z(n192) );
  CND2X1 U265 ( .A(\ARRAY[1][2] ), .B(n301), .Z(n264) );
  CND2XL U266 ( .A(n140), .B(n146), .Z(n265) );
  CND2X1 U267 ( .A(n264), .B(n265), .Z(n213) );
  CND2X1 U268 ( .A(\ARRAY[1][3] ), .B(n301), .Z(n266) );
  CND2XL U269 ( .A(n140), .B(n145), .Z(n267) );
  CND2X1 U270 ( .A(n266), .B(n267), .Z(n212) );
  CND2X1 U271 ( .A(\ARRAY[1][6] ), .B(n301), .Z(n268) );
  CND2XL U272 ( .A(n140), .B(n142), .Z(n269) );
  CND2X1 U273 ( .A(n268), .B(n269), .Z(n209) );
  COAN1X1 U274 ( .A(n341), .B(n42), .C(n70), .Z(n270) );
  CND2X1 U275 ( .A(n270), .B(n71), .Z(n198) );
  CANR2X1 U276 ( .A(dat[1]), .B(n151), .C(n308), .D(ALU_OUT[1]), .Z(n131) );
  CND2X1 U277 ( .A(n286), .B(n131), .Z(n72) );
  CANR2X1 U278 ( .A(dat[1]), .B(n151), .C(n308), .D(ALU_OUT[1]), .Z(n292) );
  COAN1X1 U279 ( .A(n327), .B(n42), .C(n62), .Z(n271) );
  CND2X1 U280 ( .A(n271), .B(n63), .Z(n196) );
  COAN1X1 U281 ( .A(n333), .B(n42), .C(n50), .Z(n272) );
  CND2X1 U282 ( .A(n272), .B(n51), .Z(n193) );
  COND1XL U283 ( .A(n94), .B(n332), .C(n100), .Z(n288) );
  CAN2X1 U284 ( .A(\ARRAY[2][6] ), .B(n90), .Z(n273) );
  COR2X1 U285 ( .A(n273), .B(n97), .Z(n201) );
  COR2X1 U286 ( .A(n94), .B(n332), .Z(n274) );
  CAN2X1 U287 ( .A(n274), .B(n276), .Z(n287) );
  CANR2X1 U288 ( .A(dat[6]), .B(n151), .C(n308), .D(ALU_OUT[6]), .Z(n276) );
  CANR2X1 U289 ( .A(dat[3]), .B(n151), .C(n308), .D(ALU_OUT[3]), .Z(n119) );
  CND2X1 U290 ( .A(n281), .B(n119), .Z(n64) );
  CAN2X1 U291 ( .A(\ARRAY[2][7] ), .B(n90), .Z(n275) );
  COR2X1 U292 ( .A(n275), .B(n91), .Z(n200) );
  CANR2X1 U293 ( .A(dat[6]), .B(n151), .C(n308), .D(ALU_OUT[6]), .Z(n100) );
  CAN2X1 U294 ( .A(\ARRAY[2][4] ), .B(n90), .Z(n277) );
  COR2X1 U295 ( .A(n277), .B(n106), .Z(n203) );
  COAN1X1 U296 ( .A(n94), .B(n328), .C(n111), .Z(n278) );
  CND2X1 U297 ( .A(n302), .B(\ARRAY[3][0] ), .Z(n279) );
  CND2X1 U298 ( .A(n76), .B(n46), .Z(n280) );
  CAN2X1 U299 ( .A(n279), .B(n280), .Z(n75) );
  COR2X1 U300 ( .A(n94), .B(n326), .Z(n281) );
  CIVXL U301 ( .A(n64), .Z(n306) );
  CAN2X1 U302 ( .A(\ARRAY[2][5] ), .B(n90), .Z(n282) );
  COR2X1 U303 ( .A(n282), .B(n101), .Z(n202) );
  COAN1X1 U304 ( .A(n94), .B(n330), .C(n105), .Z(n283) );
  CND2X1 U305 ( .A(n302), .B(\ARRAY[3][2] ), .Z(n284) );
  CND2X1 U306 ( .A(n68), .B(n46), .Z(n285) );
  CAN2X1 U307 ( .A(n284), .B(n285), .Z(n67) );
  COR2X1 U308 ( .A(n94), .B(n338), .Z(n286) );
  CIVXL U309 ( .A(n72), .Z(n304) );
  COND1X1 U310 ( .A(n94), .B(n339), .C(n136), .Z(n76) );
  COND1X1 U311 ( .A(n94), .B(n336), .C(n126), .Z(n68) );
  CNR3XL U312 ( .A(n_state[0]), .B(n_state[1]), .C(n318), .Z(n84) );
  CNR2IX4 U313 ( .B(wrt), .A(rd), .Z(n174) );
  CNR2X1 U314 ( .A(n315), .B(n23), .Z(n22) );
  CIVX2 U315 ( .A(n162), .Z(n307) );
  CND3XL U316 ( .A(n316), .B(n311), .C(n39), .Z(N470) );
  CANR4CX1 U317 ( .A(n120), .B(n121), .C(n84), .D(n113), .Z(n116) );
  CNR2X1 U318 ( .A(n320), .B(n302), .Z(n48) );
  CNR2X1 U319 ( .A(n89), .B(n310), .Z(n120) );
  CIVX2 U320 ( .A(n154), .Z(n308) );
  CAN2X1 U321 ( .A(n39), .B(n40), .Z(n23) );
  CANR11X1 U322 ( .A(n312), .B(n310), .C(n84), .D(n113), .Z(n90) );
  CANR1XL U323 ( .A(n313), .B(n310), .C(n137), .Z(n161) );
  CND4X1 U324 ( .A(n84), .B(n138), .C(n313), .D(n310), .Z(n94) );
  CAN2X1 U325 ( .A(n137), .B(n138), .Z(n121) );
  CND3XL U326 ( .A(n138), .B(n84), .C(n161), .Z(n162) );
  CANR1XL U327 ( .A(n84), .B(n172), .C(n314), .Z(n39) );
  CND3XL U328 ( .A(n46), .B(n313), .C(n79), .Z(n42) );
  CNR2X1 U329 ( .A(n310), .B(n313), .Z(n137) );
  CIVX2 U330 ( .A(n46), .Z(n302) );
  CIVX2 U331 ( .A(n40), .Z(n309) );
  CIVX2 U332 ( .A(n18), .Z(n316) );
  CIVX2 U333 ( .A(n84), .Z(n315) );
  CANR2X1 U334 ( .A(dat[0]), .B(n151), .C(n308), .D(ALU_OUT[0]), .Z(n136) );
  CANR2X1 U335 ( .A(dat[2]), .B(n151), .C(n308), .D(ALU_OUT[2]), .Z(n126) );
  CND2X1 U336 ( .A(N248), .B(n48), .Z(n62) );
  CANR2X1 U337 ( .A(n302), .B(\ARRAY[3][3] ), .C(n64), .D(n46), .Z(n63) );
  CND2X1 U338 ( .A(N247), .B(n48), .Z(n66) );
  CND2X1 U339 ( .A(N246), .B(n48), .Z(n70) );
  CANR2X1 U340 ( .A(n302), .B(\ARRAY[3][1] ), .C(n72), .D(n46), .Z(n71) );
  CND2X1 U341 ( .A(N245), .B(n48), .Z(n74) );
  CND2X1 U342 ( .A(N253), .B(n48), .Z(n43) );
  COND4CX1 U343 ( .A(n132), .B(n303), .C(n116), .D(n134), .Z(n207) );
  CND2X1 U344 ( .A(\ARRAY[2][0] ), .B(n116), .Z(n134) );
  CANR2X1 U345 ( .A(FR[0]), .B(n120), .C(n121), .D(N66), .Z(n132) );
  COND4CX1 U346 ( .A(n127), .B(n304), .C(n116), .D(n129), .Z(n206) );
  CND2X1 U347 ( .A(\ARRAY[2][1] ), .B(n116), .Z(n129) );
  CANR2X1 U348 ( .A(FR[1]), .B(n120), .C(n121), .D(N67), .Z(n127) );
  COND4CX1 U349 ( .A(n122), .B(n305), .C(n116), .D(n124), .Z(n205) );
  CND2X1 U350 ( .A(\ARRAY[2][2] ), .B(n116), .Z(n124) );
  CANR2X1 U351 ( .A(FR[2]), .B(n120), .C(n121), .D(N64), .Z(n122) );
  COND4CX1 U352 ( .A(n114), .B(n306), .C(n116), .D(n117), .Z(n204) );
  CND2X1 U353 ( .A(\ARRAY[2][3] ), .B(n116), .Z(n117) );
  CANR2X1 U354 ( .A(FR[3]), .B(n120), .C(n121), .D(N65), .Z(n114) );
  CAN4X1 U355 ( .A(n_state[0]), .B(n172), .C(n_state[2]), .D(n320), .Z(n151)
         );
  COND11X1 U356 ( .A(n324), .B(n81), .C(n325), .D(n83), .Z(n46) );
  CANR11X1 U357 ( .A(n79), .B(n313), .C(n84), .D(n85), .Z(n83) );
  COND4CX1 U358 ( .A(n88), .B(opcode[0]), .C(opcode[3]), .D(n89), .Z(n86) );
  CNR3XL U359 ( .A(n81), .B(N64), .C(n324), .Z(n113) );
  CNR2IX1 U360 ( .B(opcode[2]), .A(opcode[3]), .Z(n138) );
  CNR4X1 U361 ( .A(n313), .B(opcode[0]), .C(opcode[2]), .D(opcode[3]), .Z(n172) );
  CNR3XL U362 ( .A(opcode[2]), .B(opcode[3]), .C(n310), .Z(n79) );
  CNR3XL U363 ( .A(n_state[0]), .B(n_state[2]), .C(n320), .Z(n18) );
  CNR3XL U364 ( .A(N64), .B(N65), .C(n81), .Z(n150) );
  CNR3XL U365 ( .A(n81), .B(N65), .C(n325), .Z(n140) );
  CNR2X1 U366 ( .A(opcode[1]), .B(opcode[2]), .Z(n88) );
  CND4X1 U367 ( .A(n_state[2]), .B(n320), .C(n_state[0]), .D(n160), .Z(n154)
         );
  CAN2X1 U368 ( .A(n138), .B(n161), .Z(n160) );
  CMX4XL U369 ( .A0(\ARRAY[0][0] ), .A1(\ARRAY[1][0] ), .A2(\ARRAY[2][0] ), 
        .A3(\ARRAY[3][0] ), .S0(N66), .S1(N67), .Z(N114) );
  CMX4XL U370 ( .A0(\ARRAY[0][1] ), .A1(\ARRAY[1][1] ), .A2(\ARRAY[2][1] ), 
        .A3(\ARRAY[3][1] ), .S0(N66), .S1(N67), .Z(N113) );
  CMX4XL U371 ( .A0(\ARRAY[0][2] ), .A1(\ARRAY[1][2] ), .A2(\ARRAY[2][2] ), 
        .A3(\ARRAY[3][2] ), .S0(N66), .S1(N67), .Z(N112) );
  CMX4XL U372 ( .A0(\ARRAY[0][3] ), .A1(\ARRAY[1][3] ), .A2(\ARRAY[2][3] ), 
        .A3(\ARRAY[3][3] ), .S0(N66), .S1(N67), .Z(N111) );
  CANR3X1 U373 ( .A(state[1]), .B(state[0]), .C(state[2]), .D(n167), .Z(N93)
         );
  COND11X1 U374 ( .A(n321), .B(state[2]), .C(n317), .D(n166), .Z(N95) );
  CND3XL U375 ( .A(n167), .B(n168), .C(state[2]), .Z(n166) );
  CANR2X1 U376 ( .A(\ARRAY[0][6] ), .B(n22), .C(addr[6]), .D(n23), .Z(n25) );
  CANR2X1 U377 ( .A(\ARRAY[0][5] ), .B(n22), .C(addr[5]), .D(n23), .Z(n27) );
  CANR2X1 U378 ( .A(\ARRAY[0][4] ), .B(n22), .C(addr[4]), .D(n23), .Z(n29) );
  CNR2X1 U379 ( .A(state[0]), .B(state[1]), .Z(n167) );
  CMX4XL U380 ( .A0(\ARRAY[0][3] ), .A1(\ARRAY[1][3] ), .A2(\ARRAY[2][3] ), 
        .A3(\ARRAY[3][3] ), .S0(N64), .S1(N65), .Z(N103) );
  CMX4XL U381 ( .A0(\ARRAY[0][2] ), .A1(\ARRAY[1][2] ), .A2(\ARRAY[2][2] ), 
        .A3(\ARRAY[3][2] ), .S0(N64), .S1(N65), .Z(N104) );
  CMX4XL U382 ( .A0(\ARRAY[0][1] ), .A1(\ARRAY[1][1] ), .A2(\ARRAY[2][1] ), 
        .A3(\ARRAY[3][1] ), .S0(N64), .S1(N65), .Z(N105) );
  CMX4XL U383 ( .A0(\ARRAY[0][0] ), .A1(\ARRAY[1][0] ), .A2(\ARRAY[2][0] ), 
        .A3(\ARRAY[3][0] ), .S0(N64), .S1(N65), .Z(N106) );
  COND2X1 U384 ( .A(n308), .B(n323), .C(n159), .D(n154), .Z(n230) );
  CENX1 U385 ( .A(cout), .B(OPRN), .Z(n159) );
  CND3XL U386 ( .A(n320), .B(n318), .C(n_state[0]), .Z(n19) );
  CND2X1 U387 ( .A(n88), .B(opcode[3]), .Z(n89) );
  CND3XL U388 ( .A(n79), .B(opcode[1]), .C(n84), .Z(n40) );
  COND4CX1 U389 ( .A(n310), .B(n313), .C(n170), .D(n171), .Z(n168) );
  CND2X1 U390 ( .A(opcode[3]), .B(opcode[2]), .Z(n171) );
  COND1XL U391 ( .A(n19), .B(n344), .C(n37), .Z(n191) );
  CANR2X1 U392 ( .A(\ARRAY[0][0] ), .B(n22), .C(addr[0]), .D(n23), .Z(n37) );
  COND1XL U393 ( .A(n19), .B(n351), .C(n21), .Z(n184) );
  CANR2X1 U394 ( .A(\ARRAY[0][7] ), .B(n22), .C(addr[7]), .D(n23), .Z(n21) );
  COND1XL U395 ( .A(n19), .B(n347), .C(n31), .Z(n188) );
  CANR2X1 U396 ( .A(\ARRAY[0][3] ), .B(n22), .C(addr[3]), .D(n23), .Z(n31) );
  COND1XL U397 ( .A(n19), .B(n346), .C(n33), .Z(n189) );
  CANR2X1 U398 ( .A(\ARRAY[0][2] ), .B(n22), .C(addr[2]), .D(n23), .Z(n33) );
  COND1XL U399 ( .A(n19), .B(n345), .C(n35), .Z(n190) );
  CANR2X1 U400 ( .A(\ARRAY[0][1] ), .B(n22), .C(addr[1]), .D(n23), .Z(n35) );
  COND1XL U401 ( .A(n308), .B(n322), .C(n156), .Z(n228) );
  CND2X1 U402 ( .A(state[1]), .B(state[2]), .Z(N94) );
  CAOR2XL U403 ( .A(n316), .B(N66), .C(n18), .D(dat[0]), .Z(n175) );
  CAOR2XL U404 ( .A(n316), .B(N67), .C(n18), .D(dat[1]), .Z(n176) );
  CAOR2XL U405 ( .A(n316), .B(N64), .C(n18), .D(dat[2]), .Z(n177) );
  CAOR2XL U406 ( .A(n316), .B(N65), .C(n18), .D(dat[3]), .Z(n178) );
  CAOR2XL U407 ( .A(n316), .B(opcode[0]), .C(n18), .D(dat[4]), .Z(n182) );
  CAOR2XL U408 ( .A(n316), .B(opcode[1]), .C(dat[5]), .D(n18), .Z(n180) );
  CAOR2XL U409 ( .A(n316), .B(opcode[2]), .C(n18), .D(dat[6]), .Z(n179) );
  CAOR2XL U410 ( .A(n316), .B(opcode[3]), .C(dat[7]), .D(n18), .Z(n181) );
  COND1XL U411 ( .A(n19), .B(n348), .C(n29), .Z(n187) );
  CND2X1 U412 ( .A(N249), .B(n48), .Z(n58) );
  COND1XL U413 ( .A(n19), .B(n349), .C(n27), .Z(n186) );
  CND2X1 U414 ( .A(N250), .B(n48), .Z(n54) );
  COND1XL U415 ( .A(n19), .B(n350), .C(n25), .Z(n185) );
  CND2X1 U416 ( .A(N251), .B(n48), .Z(n50) );
  CMX4XL U417 ( .A0(\ARRAY[0][7] ), .A1(\ARRAY[1][7] ), .A2(\ARRAY[2][7] ), 
        .A3(\ARRAY[3][7] ), .S0(N66), .S1(N67), .Z(N107) );
  CMX4XL U418 ( .A0(\ARRAY[0][7] ), .A1(\ARRAY[1][7] ), .A2(\ARRAY[2][7] ), 
        .A3(\ARRAY[3][7] ), .S0(N64), .S1(N65), .Z(N99) );
  CMX4XL U419 ( .A0(\ARRAY[0][6] ), .A1(\ARRAY[1][6] ), .A2(\ARRAY[2][6] ), 
        .A3(\ARRAY[3][6] ), .S0(N66), .S1(N67), .Z(N108) );
  CMX4XL U420 ( .A0(\ARRAY[0][6] ), .A1(\ARRAY[1][6] ), .A2(\ARRAY[2][6] ), 
        .A3(\ARRAY[3][6] ), .S0(N64), .S1(N65), .Z(N100) );
  CMX4XL U421 ( .A0(\ARRAY[0][5] ), .A1(\ARRAY[1][5] ), .A2(\ARRAY[2][5] ), 
        .A3(\ARRAY[3][5] ), .S0(N66), .S1(N67), .Z(N109) );
  CMX4XL U422 ( .A0(\ARRAY[0][5] ), .A1(\ARRAY[1][5] ), .A2(\ARRAY[2][5] ), 
        .A3(\ARRAY[3][5] ), .S0(N64), .S1(N65), .Z(N101) );
  CMX4XL U423 ( .A0(\ARRAY[0][4] ), .A1(\ARRAY[1][4] ), .A2(\ARRAY[2][4] ), 
        .A3(\ARRAY[3][4] ), .S0(N66), .S1(N67), .Z(N110) );
  CMX4XL U424 ( .A0(\ARRAY[0][4] ), .A1(\ARRAY[1][4] ), .A2(\ARRAY[2][4] ), 
        .A3(\ARRAY[3][4] ), .S0(N64), .S1(N65), .Z(N102) );
  COND2X1 U425 ( .A(n253), .B(n90), .C(n324), .D(n93), .Z(n91) );
  COND2X1 U426 ( .A(n287), .B(n90), .C(n325), .D(n93), .Z(n97) );
  COND2X1 U427 ( .A(n283), .B(n90), .C(n340), .D(n93), .Z(n101) );
  COND2X1 U428 ( .A(n278), .B(n90), .C(n342), .D(n93), .Z(n106) );
  CANR2XL U429 ( .A(dat[0]), .B(n151), .C(n308), .D(ALU_OUT[0]), .Z(n291) );
  CANR2XL U430 ( .A(dat[2]), .B(n151), .C(n308), .D(ALU_OUT[2]), .Z(n293) );
  CANR2XL U431 ( .A(dat[3]), .B(n151), .C(n308), .D(ALU_OUT[3]), .Z(n294) );
  CANR2XL U432 ( .A(dat[7]), .B(n151), .C(n308), .D(ALU_OUT[7]), .Z(n295) );
  CANR2XL U433 ( .A(dat[6]), .B(n151), .C(n308), .D(ALU_OUT[6]), .Z(n296) );
  CANR2XL U434 ( .A(dat[5]), .B(n151), .C(n308), .D(ALU_OUT[5]), .Z(n297) );
  CANR2XL U435 ( .A(dat[4]), .B(n151), .C(n308), .D(ALU_OUT[4]), .Z(n298) );
  COND1XL U436 ( .A(n315), .B(n339), .C(n291), .Z(n148) );
  COND1XL U437 ( .A(n315), .B(n338), .C(n292), .Z(n147) );
  COND1XL U438 ( .A(n315), .B(n336), .C(n293), .Z(n146) );
  COND1XL U439 ( .A(n315), .B(n326), .C(n294), .Z(n145) );
  COND1XL U440 ( .A(n315), .B(n334), .C(n295), .Z(n141) );
  COND1XL U441 ( .A(n315), .B(n332), .C(n296), .Z(n142) );
  COND1XL U442 ( .A(n315), .B(n330), .C(n297), .Z(n143) );
  COND1XL U443 ( .A(n315), .B(n328), .C(n298), .Z(n144) );
  CANR2X1 U444 ( .A(n302), .B(\ARRAY[3][7] ), .C(n46), .D(n254), .Z(n44) );
  COND3X1 U445 ( .A(n329), .B(n42), .C(n58), .D(n59), .Z(n195) );
  CANR2X1 U446 ( .A(n302), .B(\ARRAY[3][4] ), .C(n46), .D(n290), .Z(n59) );
  COND3X1 U447 ( .A(n331), .B(n42), .C(n54), .D(n55), .Z(n194) );
  CANR2X1 U448 ( .A(n302), .B(\ARRAY[3][5] ), .C(n46), .D(n289), .Z(n55) );
  CANR2X1 U449 ( .A(n302), .B(\ARRAY[3][6] ), .C(n46), .D(n288), .Z(n51) );
  CIVX3 U450 ( .A(rst), .Z(n299) );
  CIVX2 U451 ( .A(n150), .Z(n300) );
  CIVX2 U452 ( .A(n140), .Z(n301) );
  CIVX2 U453 ( .A(n76), .Z(n303) );
  CIVX2 U454 ( .A(n68), .Z(n305) );
  CIVX2 U455 ( .A(opcode[0]), .Z(n310) );
  CIVX2 U456 ( .A(n151), .Z(n311) );
  CIVX2 U457 ( .A(n89), .Z(n312) );
  CIVX2 U458 ( .A(opcode[1]), .Z(n313) );
  CIVX2 U459 ( .A(n19), .Z(n314) );
  CIVX2 U460 ( .A(state[0]), .Z(n317) );
  CIVX2 U461 ( .A(n_state[2]), .Z(n318) );
  CIVX2 U462 ( .A(state[2]), .Z(n319) );
  CIVX2 U463 ( .A(n_state[1]), .Z(n320) );
  CIVX2 U464 ( .A(state[1]), .Z(n321) );
  CIVX2 U465 ( .A(FR[3]), .Z(n322) );
  CIVX2 U466 ( .A(FR[1]), .Z(n323) );
  CIVX2 U467 ( .A(N65), .Z(n324) );
  CIVX2 U468 ( .A(N64), .Z(n325) );
  CIVX2 U469 ( .A(N111), .Z(n326) );
  CIVX2 U470 ( .A(\ARRAY[0][3] ), .Z(n327) );
  CIVX2 U471 ( .A(N110), .Z(n328) );
  CIVX2 U472 ( .A(\ARRAY[0][4] ), .Z(n329) );
  CIVX2 U473 ( .A(N109), .Z(n330) );
  CIVX2 U474 ( .A(\ARRAY[0][5] ), .Z(n331) );
  CIVX2 U475 ( .A(N108), .Z(n332) );
  CIVX2 U476 ( .A(\ARRAY[0][6] ), .Z(n333) );
  CIVX2 U477 ( .A(N107), .Z(n334) );
  CIVX2 U478 ( .A(\ARRAY[0][7] ), .Z(n335) );
  CIVX2 U479 ( .A(N112), .Z(n336) );
  CIVX2 U480 ( .A(\ARRAY[0][2] ), .Z(n337) );
  CIVX2 U481 ( .A(N113), .Z(n338) );
  CIVX2 U482 ( .A(N114), .Z(n339) );
  CIVX2 U483 ( .A(N67), .Z(n340) );
  CIVX2 U484 ( .A(\ARRAY[0][1] ), .Z(n341) );
  CIVX2 U485 ( .A(N66), .Z(n342) );
  CIVX2 U486 ( .A(\ARRAY[0][0] ), .Z(n343) );
  CIVX2 U487 ( .A(\ARRAY[3][0] ), .Z(n344) );
  CIVX2 U488 ( .A(\ARRAY[3][1] ), .Z(n345) );
  CIVX2 U489 ( .A(\ARRAY[3][2] ), .Z(n346) );
  CIVX2 U490 ( .A(\ARRAY[3][3] ), .Z(n347) );
  CIVX2 U491 ( .A(\ARRAY[3][4] ), .Z(n348) );
  CIVX2 U492 ( .A(\ARRAY[3][5] ), .Z(n349) );
  CIVX2 U493 ( .A(\ARRAY[3][6] ), .Z(n350) );
  CIVX2 U494 ( .A(\ARRAY[3][7] ), .Z(n351) );
endmodule

