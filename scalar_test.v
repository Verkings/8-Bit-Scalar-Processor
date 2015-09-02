`timescale 1ns/10ps;
`define AR   2'b00
`define DR   2'b01
`define GR   2'b10
`define PR   2'b11
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

`define IDEL 3'b000
`define FETCH  3'b001 
`define DECODE 3'b010
`define UPDATE 3'b011
`define EXECUTE_1 3'b100
`define EXECUTE_2 3'b101

module SCALAR_TEST;

wire [7:0] addr;
wire rd, wrt, clk;
wire [7:0] dat;

// reset
reg rst;
reg [2:0] state, n_state;
//MEMORY STORAGE
reg [7:0] RAM [0:255];
//reg [3:0] opcode;
//reg [1:0] D,S;
//Integers for RESET and Display
integer u; 

// CLOCK INSTANCE
clk_GENERATOR clk_gen_inst(.clk(clk));

// SCALAR PROCESSOR INSTANCE
SCALAR_PROCESSOR S123 (.dat(dat), .addr(addr), .rd(rd), .wrt(wrt), .clk(clk), .rst(rst));

initial begin
$dumpfile ("scalar.vcd");
$dumpvars (0,SCALAR_TEST);
end

initial
begin
rst=1'b1;
 
#11 rst=1'b0;

//----------------------------------------- INSTRUCTION MEMORY --------------------------------------------------------------
//    1)  ADD AN 8-BIT DATA AT MEMORY LOCATION 80H TO AN IMMEDIATE DATA 45H AND STORE THE RESULT TO MEMORY LOCATION 80H    //
 
 RAM[0] = {`LLS,4'h5};
 RAM[1] = {`LMS,4'h4};
 RAM[2] = {`CPR,`DR,`GR};
 RAM[3] = {`LLS,4'h0};
 RAM[4] = {`LMS,4'h8};
 RAM[5] = {`CPR,`AR,`GR};
 RAM[6] = {`RDM,`GR,2'b00};
 RAM[7] = {`ADD,`GR,`DR};
 RAM[8] = {`WRM,`GR,2'b00};
 
//    2)  ADD AN 8-BIT DATA AT MEMORY LOCATION 81H AND 91H AND STORE THE RESULT TO MEMORY LOCATION 81H    //

 RAM[9]  = {`LLS,4'h1};
 RAM[10]  = {`LMS,4'h8};
 RAM[11] = {`CPR,`AR,`GR};
 RAM[12] = {`RDM,`GR,2'b00};
 RAM[13] = {`CPR,`DR,`GR};
 RAM[14] = {`LLS,4'h1};
 RAM[15] = {`LMS,4'h9};
 RAM[16] = {`CPR,`AR,`GR};
 RAM[17] = {`RDM,`GR,2'b00};
 RAM[18] = {`ADD,`DR,`GR};
 RAM[19] = {`LLS,4'h1};
 RAM[20] = {`LMS,4'h8};
 RAM[21] = {`CPR,`AR,`GR};
 RAM[22] = {`WRM,`DR,2'b00};
 
 //     3)   SUBSTRACT AN 8-BIT DATA AT MEMORY LOCATION 82H FROM ANOTHER 8-BIT DATA AT MEMORY LOCATION 91H AND STORE THE RESULT TO MEMORY LOCATION 81H    //
 
 RAM[23] = {`LLS,4'h2};
 RAM[24] = {`LMS,4'h8};
 RAM[25] = {`CPR,`AR,`GR};
 RAM[26] = {`RDM,`GR,2'b00};
 RAM[27] = {`CPR,`DR,`GR};
 RAM[28] = {`LLS,4'h2};
 RAM[29] = {`LMS,4'h9};
 RAM[30] = {`CPR,`AR,`GR};
 RAM[31] = {`RDM,`GR,2'b00};
 RAM[32] = {`SUB,`GR,`DR};
 RAM[33] = {`LLS,4'h2};
 RAM[34] = {`LMS,4'h8};
 RAM[35] = {`CPR,`AR,`GR};
 RAM[36] = {`WRM,`GR,2'b00};
 
 
 //     4)    STORE THE CONTENTS OF 4-BIT FLAG REGISTER INTO LEAST SIGNIFICANT 4-BIT OF MEMORY LOCATION F0H       //
 RAM[37] = {`CFR,4'h0};
 RAM[38] = {`CPR,`DR,`GR};
 RAM[39] = {`LLS,4'h0};
 RAM[40] = {`LMS,4'hF};
 RAM[41] = {`CPR,`AR,`GR};
 RAM[42] = {`WRM,`DR,2'b00};
 RAM[43] = {`NOP,4'h0};
 
 //     5)   USE THE JMP INSTRUCTION TO REPEAT THE SEPS FROM 1) TO 4) ONE MORE TIME   //
 RAM[44] = {`LLS,4'h0};
 RAM[45] = {`LMS,4'h0};
 RAM[46] = {`CPR,`AR,`GR};
 RAM[47] = {`JMP,4'h0};
 
 
 
 //----------------------------------------------------- DATA MEMORY --------------------------------------------------------

 RAM[8'h80] = 8'h44;
 RAM[8'h81] = 8'h55;
 RAM[8'h82] = 8'h66;
 RAM[8'h91] = 8'h77;
 RAM[8'h92] = 8'h88;
 
 
for (u=0;u<=255;u=u+1)
  begin
  $display("Address=  %02h, Data at %02h = %02h ",u,u,RAM[u]);
  end
 
  $monitor ("                         WRITEEN DATA : RAM[80h]= %h, RAM[81h]= %h,  RAM[82h]= %h,  RAM[FO]= %h\n",RAM[8'h80],RAM[8'h81],RAM[8'h82],RAM[8'hf0]);
 
#3874 $finish;
end
//------------------------------------------------------ MEMORY BANK ----------------------------------------------------------
/*always @ (posedge (clk) or posedge (rst))
  begin
  if(rst) 
      state <= `IDEL;
      else state <= n_state;
      D<=0;
      S<=0;
      opcode <=0;
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

always @ (posedge clk)

    begin

	
  case(n_state)
//--------------------------------------------------------------------------- FETCH STATE -----------------------------------------------------------------------------
    `FETCH:
    begin
    $write($time," ns  FETCH STATE: Instruction is Fetched\n");
//{opcode,D,S} <= dat;
    end
//--------------------------------------------------------------------------- DECODE STATE -----------------------------------------------------------------------------
   `DECODE:
     begin
     $write($time," ns  DECODE STATE: Instruction is Decoded\n");
{opcode,D,S} <= dat;
     end
//--------------------------------------------------------------------------- UPDATE STATE -----------------------------------------------------------------------------     
   `UPDATE:  
     begin 

	 case(opcode)
	`NOP:
	 begin
	 $write($time," ns  Instruction : NOP\n");
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");

	 end

	`JMP:
	 begin
	 $write($time," ns  Instruction : JMP \n");
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 end

	`RDM:
	 begin
	 $write($time," ns  Instruction : RDM,%02h ;\n",D);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end

	`WRM:
	 begin
	 $write($time," ns  Instruction : WRM,%02h ;\n",S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	// ARRAY [3] <= ARRAY[3]+1;
	 end

	`CPR:
	 begin
	 $write($time, " ns  Instruction : CPR,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end	

	`ADD:
	 begin
	 $write($time," ns  Instruction : ADD,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end

	`SUB:
	 begin
	 $write($time," ns  Instruction : SUB,%02h,%02h ;\n ",D,S);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end

	`LLS:
	 begin
	 $write($time," ns  Instruction : LLS,%02h ;\n ",dat[3:0]);
	 $write("                        UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end

	`LMS:
	 begin
	 $write($time," ns  Instruction : LMS,%02h ;\n",dat[3:0]);
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
	 end

	`CFR:
	 begin
	 $write($time," ns  Instruction : CFR;\n");
	 $write("                         UPDATE STATE: PR Register is Incremented to Fetch the next Instruction. . .\n");
	 //ARRAY [3] <= ARRAY[3]+1;
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
	 $write($time," ns  EXECUTE_1 STATE: Executed JMP and Jumped to Instruction stored at Memory Location 00H\n\n");

	 end

	`RDM:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing RDM...Setting AR to Memory Address...  \n");

	 end 

	`WRM:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing WRM...Setting AR  to Memory Address...  \n");

	 end

	`CPR:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed CPR and  Copied the Contents of register %02h to %02h ;\n ",S,D);

	 end	

	`ADD:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing ADD...Providing ALU inputs %02h and %02h Register Contents and Adding them...\n",S,D);

	 end

	`SUB:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executing SUB...Providing ALU inputs %02h and %02h Register Contents and Subtracting them...\n",S,D);

	 end

	`LLS:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed LLS and Stored data at LSBs of GR \n");

	 end

	`LMS:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed LMS and Stored data at MSBs of GR \n");

	 end

	`CFR:
	 begin
	 $write($time," ns  EXECUTE_1 STATE: Executed CFR and Stored data FR to LSBs of GR \n");

	 end
	default:$write($time," ns EXECUTE_1 STATE: INVALID INSTRUCTION ");
	
	endcase
    end
    
    `EXECUTE_2:
    begin
	 case(opcode)
	  
	`RDM:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: Read the Data %08h from Memory Location %08h and Stored into %02b Register\n",dat,addr,D);
	 end 

	`WRM:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: %02b Register Data is Written at Memory Address %08h\n",D,addr);
	 end

	`ADD:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: Added the %02b Register Data with %02b Register Data and the Result is Stored into %02b Register\n",D,S,D);
	 end
	 
	 `SUB:
	 begin
	 $write($time," ns  EXECUTE_2 STATE: Subtracted the %02b Register Data from %02b Register Data and the Result is Stored into %02b Register\n",S,D,D);
	 end
	
	endcase
    end
    
    
    
     `IDEL:  
     begin 

	 case(dat[7:4])

	`RDM:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`CPR:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end	

	`ADD:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`SUB:
	 begin
	  //$write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`LLS:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`LMS:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end

	`CFR:
	 begin
	 // $write("                         AR[00]= %08h, DR[01]= %08h, GR[10]= %08h, PR[11]= %08h\n\n",ARRAY[0],ARRAY[1],ARRAY[2],ARRAY[3]);
	 end
	default: $write("");
		
	endcase
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  endcase
  end  

*/

assign dat = ((rd==1'b1)&&(wrt==1'b0))? RAM [addr]:{8{1'bz} };
 
always @ (posedge clk)
	begin
	if ((rd==1'b0)&&(wrt==1'b1)) // write operation
	
	RAM [addr] <=  dat;

	end
endmodule

//------------------------------------------------- CLOCK GENERATOR MODULE -------------------------------------------------------

module clk_GENERATOR(clk);

output clk;
reg clk;

initial
  begin
  clk = 1'b1;
  end

  always
  begin
  #3 clk <= ~clk;
  end
endmodule