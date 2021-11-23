/******************************************************************
* Description
*	This is the verifaction envioroment ofr testeting the register file.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	12/06/2015
******************************************************************/
/*
Eugenio Alejandro Ruiz Mejia
Diplomado en verificacion presilicio
ITESO
Arquitectura de computadoras
TB Register File
*/
`timescale 10ns / 1ns

module Register_File_TB;

reg clk_tb = 0;
reg reset_tb;
reg Reg_Write_i_tb;
reg [4:0] Write_Register_tb;
reg [4:0] Read_Register_1_tb;
reg [4:0] Read_Register_2_tb;
reg [31:0] Write_Data_i_tb;
wire [31:0] Read_Data_1_tb;
wire [31:0] Read_Data_2_tb;
wire [31:0] Q1_tb;

parameter DW=32;

Register_File
#(
	.N(DW)
)
DUV
(
	.clk(clk_tb),
	.reset(reset_tb),
	.Reg_Write_i(Reg_Write_i_tb),
	.Write_Register_i(Write_Register_tb),
	.Read_Register_1_i(Read_Register_1_tb),
	.Read_Register_2_i(Read_Register_2_tb),
	.Write_Data_i(Write_Data_i_tb),
	.Read_Data_1_o(Read_Data_1_tb),
	.Read_Data_2_o(Read_Data_2_tb),
	.Q1(Q1_tb)
);


/*********************************************************/
initial // Clock generator
  begin
    forever #5 clk_tb = !clk_tb;
  end
/*********************************************************/

initial begin
#0 reset_tb = 0;
#5 reset_tb = 1; //Reset se pone en 1
#10 Reg_Write_i_tb = 0;
#15 Reg_Write_i_tb = 1; //Habilita enable de escritura
#20 Write_Register_tb = 1; //Selecciona reg 1
#25 Write_Data_i_tb = 32'h4DE7E0CD;
#30 Read_Register_1_tb = 1;
#35 Read_Register_2_tb = 1;
#40 Write_Data_i_tb = 32'hFFFFFFFF;
#45 reset_tb = 0;
#50 reset_tb = 1;

$finish();
end
endmodule