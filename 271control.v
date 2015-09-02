 
`timescale 1ns/10ps
//---------------------------------------------------------------------- DEFINITION OF STATES ------------------------------------------------------
`define IDEL 3'b000
`define FETCH  3'b001 
`define DECODE 3'b010
`define UPDATE 3'b011
`define EXECUTE_1 3'b100
`define EXECUTE_2 3'b101

//------------------------------------------------------------------ DEFINITION OF INSTRUCTIONS -----------------------------------------------
`define NOP    4'b0000
`define JMP    4'b0001
`define RDM    4'b0010
`define WRM    4'b0011
`define CPR    4'b0100
`define ADD    4'b0101
`define SUB    4'b0110
`define LLS    4'b0111
`define LMS    4'b1000
`define CFR    4'b1001


//------------------------------------------------------------------SCALAR PROCESSOR VERILOG CODE ---------------------------------------------
module SCALAR_PROCESSOR(dat,addr, rd, wrt, clk, rst); 

//----------------------------------------------------------------------- OUTPUT SIGNALS -------------------------------------------------------
output rd, wrt;
output [7:0] addr;
//----------------------------------------------------------------------- INPUT SIGNALS --------------------------------------------------------
input  clk, rst;
//----------------------------------------------------------------------- INOUT SIGNALS --------------------------------------------------------
inout [7:0] dat ;
//------------------------------------------------------------------------- STATE NETS ---------------------------------------------------------
reg [2:0] state;
reg [2:0] n_state;
//------------------------------------------------------------------- ALU REGISTERS & WIRES ----------------------------------------------------
reg [7:0]  OP1, OP2;
reg OPRN,sign,carry,zero;
wire [7:0] ALU_OUT;
wire cin,cout,ov;
//-----------------------------------------------------------------SCALAR PROCESSOR INTERNAL REGISTERS -----------------------------------------
reg [7:0]  addr;
reg rd, wrt;
reg [3:0] opcode;
reg [1:0] D,S;
reg [7:0] ARRAY [3:0]; 
reg [7:0] AR, DR, GR, PR,dat_T;
reg [3:0] FR;

//----------------------------------------------------------------------- ALU MODULE INSTANTIATE ------------------------------------------------
ALU alu23 (.sum(ALU_OUT), .a(OP1), .b(OP2), .cin(OPRN),.cout(cout),.ov(ov));

//-------------------------------------------------------------------------- SCALAR PROCESSOR ---------------------------------------------------
assign  dat = ((rd==1'b0)&&(wrt==1'b1))? dat_T:{8{1'bz} };

always @(*)
  begin
  AR = ARRAY [0];
  DR = ARRAY [1];
  GR = ARRAY [2];
  PR = ARRAY [3];
  end

always @ (ALU_OUT)
  begin
  if (ALU_OUT ==0) 
      zero = 1'b1;
      else zero = 1'b0;
  
  if (ALU_OUT[7] ==1'b1) 
      sign = 1'b1; 
      else sign =1'b0;
      
  if ((!OPRN && cout) | (OPRN && !cout)) 
      carry=1'b1; 	
      else carry=1'b0;
  end
  
always @ (posedge (clk) or posedge (rst))
  begin
  if(rst) 
      state <= `IDEL;
      else state <= n_state;
  end 

always @ (*)
  begin
   case(state)
   `IDEL  : n_state = `FETCH;
   `FETCH : n_state = `DECODE;
   `DECODE: n_state = `UPDATE;
   `UPDATE: n_state = `EXECUTE_1;
   `EXECUTE_1:begin 
	     if (opcode == `NOP || opcode==`LLS || opcode==`LMS || opcode==`CPR || opcode==`CFR || opcode==`JMP) 
	     n_state = `IDEL; 
	     else n_state = `EXECUTE_2;
	     end 
   `EXECUTE_2:begin
	    n_state = `IDEL;
	    end
   endcase
  end

always @ (posedge clk or posedge rst)
  begin
  if (rst)
    begin
    AR <= 0;
    GR <= 0;
    DR <= 0;
    PR <= 0;
    FR <= 0;
    OP1 <= 0;
    OP2 <= 0;
    ARRAY[3] <=0;
    ARRAY[2] <=0;
    ARRAY[1] <=0;
    ARRAY[0] <=0;
    addr <= 0;
    rd <= 0;
    wrt <= 0;
    dat_T <=0;
    D <= 0;
    S <= 0;
    opcode <= 0;
    OPRN <= 0;
    end
  
  else
    begin
	rd <= 0;
	wrt <= 0;
	
  case(n_state)
//--------------------------------------------------------------------------- FETCH STATE -----------------------------------------------------------------------------
    `FETCH:
    begin
    $write($time," ns  FETCH STATE: Instruction is Fetched\n");
    addr <= ARRAY[3];
    rd <= 1'b1;
    wrt <= 1'b0;
    end
//--------------------------------------------------------------------------- DECODE STATE -----------------------------------------------------------------------------
   `DECODE:
     begin
     $write($time," ns  DECODE STATE: Instruction is Decoded\n");
     rd <=1'b1;
     wrt <=1'b0;
     {opcode,D,S}  <= dat;
     end
//--------------------------------------------------------------------------- UPDATE STATE -----------------------------------------------------------------------------     
   `UPDATE:  
     begin 
     rd <=1'b0;
     wrt <=1'b0;
	 case(opcode)
	`NOP:
	 begin
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`JMP:
	 begin
	 $write($time," ns  Instruction : JMP \n");
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 end

	`RDM:
	 begin
	 ARRAY [3] <= ARRAY[3]+1;
	 $write($time," ns  Instruction : RDM,%02h ;\n",D);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 end

	`WRM:
	 begin
	 $write($time," ns  Instruction : WRM,%02h ;\n",S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`CPR:
	 begin
	 $write($time, " ns  Instruction : CPR,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end	

	`ADD:
	 begin
	 	 $write($time," ns  Instruction : ADD,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`SUB:
	 begin
	 $write($time," ns  Instruction : SUB,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`LLS:
	 begin
	 $write($time," ns  Instruction : LLS,%02h ;\n ",dat[3:0]);
	 $write("                        UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`LMS:
	 begin
	  $write($time," ns  Instruction : LMS,%02h ;\n",dat[3:0]);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end

	`CFR:
	 begin
	 $write($time," ns  Instruction : CFR;\n");
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 ARRAY [3] <= ARRAY[3]+1;
	 end
	default: $write("");
		
	endcase
    end
//--------------------------------------------------------------------------- EXECUTE_1 STATE -----------------------------------------------------------------------------	
  `EXECUTE_1:
    begin
    	 case(opcode)
	`NOP:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed NOP and  No Operation is Perfomed\n\n");
	 end
	`JMP:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed JMP and Jumped to Instruction stored at %08H Memory Location\n\n",ARRAY[0]);
	 ARRAY[3] <= ARRAY[0];
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`RDM:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing RDM...Setting AR = %08h to Memory Address...  \n",ARRAY[0]);
	 addr <= ARRAY[0];
	 rd <= 1'b1;
	 wrt <= 1'b0;
	 end 

	`WRM:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing WRM...Setting AR = %08h  to Memory Address...  \n",ARRAY[0]);
	 addr <= ARRAY[0];
	 dat_T <= ARRAY[D];
	 rd <= 1'b0;
	 rd <=1'b0; wrt<=1'b1;
	 end

	`CPR:
	 begin
	$write($time," ns  EXECUTE_1 STATE: Executed CPR and  Copied the Contents of %02b to %02b register\n",S,D);
	 ARRAY[D] <= ARRAY[S];
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end	

	`ADD:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing ADD...Providing ALU Opcodes %08h and %08h and Adding them...   \n",ARRAY[D],ARRAY[S]);
	 OP1 <= ARRAY[D];
	 OP2 <= ARRAY[S];
	 OPRN <= 1'b0;
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`SUB:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing SUB...Providing ALU Opcodes %08h and %08h and Subtracting them...   \n",ARRAY[D],ARRAY[S]);
	 OP1 <= ARRAY[D];
	 OP2 <= ARRAY[S];
	 OPRN <= 1'b1;
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`LLS:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed LLS and Stored data at LSBs of GR = %02h\n",{D,S});
	 ARRAY[2][3:0] <= {D,S};
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`LMS:
	 begin
	$write($time," ns  EXECUTE_1 STATE: Executed LMS and Stored data at MSBs of GR = %02h\n",{D,S});
	 ARRAY[2][7:4] <= {D,S};
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`CFR:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed CFR and Stored data  at LSBs of GR = %02h\n",FR);
	 ARRAY[2][3:0] <= FR;
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end
	default:$write($time," ns EXECUTE_1 STATE: INVALID INSTRUCTION ");
	
	endcase
    end
    
    `EXECUTE_2:
    begin
	 case(opcode)
	  
	`JMP:
	 begin
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`RDM:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: Read the Data %08h from Memory Location %08h and Stored into %02b Register\n",dat,addr,D);
	 ARRAY[D] <= dat;
	 rd <= 1'b1;
	 wrt <= 1'b0;
	 end 

	`WRM:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: %02b Register Data %08h is Written at Memory Address %08h\n",D,ARRAY[D],addr);
	 end

	`CPR:
	 begin
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end	

	`ADD:
	 begin
	 $write($time," ns  %02b Register Data = %08h  and %02b Register Data = %08h \n",D,ARRAY[D],S,ARRAY[S]);
	 ARRAY[D] <= ALU_OUT;
	 FR <= {zero,sign,carry,ov};
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`SUB:
	 begin
	 $write($time," ns  %02b Register Data = %08h  and %02b Register Data = %08h \n",S,ARRAY[S],D,ARRAY[D]);
	 ARRAY[D] <= ALU_OUT;
	 FR <= {zero,sign,carry,ov};
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`LLS:
	 begin
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`LMS:
	 begin
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end

	`CFR:
	 begin
	 rd <= 1'b0;
	 wrt <= 1'b0;
	 end
	default: $write("");
	
	endcase
    end
    
    
    
     `IDEL:  
     begin 
     rd <=1'b0;
     wrt <=1'b0;
	 case(opcode)

	`RDM:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`CPR:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end	

	`ADD:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`SUB:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`LLS:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`LMS:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`CFR:
	 begin
	  $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end
	default: $write("");
		
	endcase
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  endcase
  end  
end
endmodule

//---------------------------------------------------------------------- ALU MODULE ----------------------------------------------------------------------------
module ALU(sum,cout,a, b,cin,ov);
input [7:0] a; 
input [7:0] b;
input cin;
output [7:0] sum; 
output cout,ov;
wire cin7;
reg [7:0] d;

RCA_8 n1_inst (sum, cout, a, d, cin,cin7);
assign ov = cout^cin7;
always @ (*) 
begin
  if(!cin)
  begin 
  d = b;
  end 

  else if (cin)
  begin 
  d = ~b;
  end 
end 

endmodule

//----------------------------------------------------------------8 BIT RIPPLE CARRY ADDER---------------------------------------------------------------
module RCA_8 (sum, cout, a, b, cin,cin7);
output [7:0] sum;
output cout,cin7;
input [7:0] a, b;
input cin;
wire cin1, cin2, cin3,cin4,cin5,cin6;
add_full U1 (sum[0], cin1, a[0], b[0], cin);
add_full U2 (sum[1], cin2, a[1], b[1], cin1);
add_full U3 (sum[2], cin3, a[2], b[2], cin2);
add_full U4 (sum[3], cin4, a[3], b[3], cin3);

add_full U5 (sum[4], cin5, a[4], b[4], cin4);
add_full U6 (sum[5], cin6, a[5], b[5], cin5);
add_full U7 (sum[6], cin7, a[6], b[6], cin6);
add_full U8 (sum[7], cout, a[7], b[7], cin7);

endmodule 
//---------------------------------------------------------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------FULL ADDER------------------------------------------------------------------------
module add_full (sum, cout, a, b, cin);
input a, b, cin;
output cout, sum;
wire w1, w2, w3;
add_half U1 (w1, w2, a, b);
add_half U2 (sum, w3, cin, w1);
assign cout= w2|w3;
endmodule 
//---------------------------------------------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------HALF ADDER-------------------------------------------------------------------------
module add_half (sum, cout, a, b);
input a, b;
output cout, sum;
assign sum = a^b;
assign cout= a&b;
endmodule 
//-----------------------------------------------------------------------------------------------------------------------------------------------------------