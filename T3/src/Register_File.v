//This will be the wrapper for the register file project

module Register_File #(parameter N = 32)(
input clk, reset,
input Reg_Write_i, //Write enable
input [4:0] Write_Register_i, //rd
input [4:0] Read_Register_1_i, //rs 
input [4:0] Read_Register_2_i, //rt
input [N-1:0] Write_Data_i, //R[rd]

output [N-1:0] Read_Data_1_o, //R[rs]
output [N-1:0] Read_Data_2_o, //R[rt]
output [N-1:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31
);

wire [N-1:0] OneHot;

onehot PriorityDecoder (.din(Write_Register_i),.dout(OneHot));

register #(.SIZE(N)) zero (.clk(clk), .clr(reset), .d(0), .q(Q0), .clock_enable(Reg_Write_i)); //$Zero
register #(.SIZE(N)) at (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q1), .clock_enable(Reg_Write_i & OneHot[1])); //$at
register #(.SIZE(N)) v0 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q2), .clock_enable(Reg_Write_i & OneHot[2]));
register #(.SIZE(N)) v1 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q3), .clock_enable(Reg_Write_i & OneHot[3]));
register #(.SIZE(N)) a0 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q4), .clock_enable(Reg_Write_i & OneHot[4]));
register #(.SIZE(N)) a1 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q5), .clock_enable(Reg_Write_i & OneHot[5]));
register #(.SIZE(N)) a2 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q6), .clock_enable(Reg_Write_i & OneHot[6]));
register #(.SIZE(N)) a3 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q7), .clock_enable(Reg_Write_i & OneHot[7]));
register #(.SIZE(N)) t0 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q8), .clock_enable(Reg_Write_i & OneHot[8]));
register #(.SIZE(N)) t1 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q9), .clock_enable(Reg_Write_i & OneHot[9]));
register #(.SIZE(N)) t2 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q10), .clock_enable(Reg_Write_i & OneHot[10]));
register #(.SIZE(N)) t3 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q11), .clock_enable(Reg_Write_i & OneHot[11]));
register #(.SIZE(N)) t4 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q12), .clock_enable(Reg_Write_i & OneHot[12]));
register #(.SIZE(N)) t5 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q13), .clock_enable(Reg_Write_i & OneHot[13]));
register #(.SIZE(N)) t6 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q14), .clock_enable(Reg_Write_i & OneHot[14]));
register #(.SIZE(N)) t7 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q15), .clock_enable(Reg_Write_i & OneHot[15]));
register #(.SIZE(N)) s0 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q16), .clock_enable(Reg_Write_i & OneHot[16]));
register #(.SIZE(N)) s1 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q17), .clock_enable(Reg_Write_i & OneHot[17]));
register #(.SIZE(N)) s2 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q18), .clock_enable(Reg_Write_i & OneHot[18]));
register #(.SIZE(N)) s3 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q19), .clock_enable(Reg_Write_i & OneHot[19]));
register #(.SIZE(N)) s4 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q20), .clock_enable(Reg_Write_i & OneHot[20]));
register #(.SIZE(N)) s5 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q21), .clock_enable(Reg_Write_i & OneHot[21]));
register #(.SIZE(N)) s6 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q22), .clock_enable(Reg_Write_i & OneHot[22]));
register #(.SIZE(N)) s7 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q23), .clock_enable(Reg_Write_i & OneHot[23]));
register #(.SIZE(N)) t8 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q24), .clock_enable(Reg_Write_i & OneHot[24]));
register #(.SIZE(N)) t9 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q25), .clock_enable(Reg_Write_i & OneHot[25]));
register #(.SIZE(N)) k0 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q26), .clock_enable(Reg_Write_i & OneHot[26]));
register #(.SIZE(N)) k1 (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q27), .clock_enable(Reg_Write_i & OneHot[27]));
register #(.SIZE(N)) gp (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q28), .clock_enable(Reg_Write_i & OneHot[28]));
register #(.SIZE(N)) sp (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q29), .clock_enable(Reg_Write_i & OneHot[29]));
register #(.SIZE(N)) fp (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q30), .clock_enable(Reg_Write_i & OneHot[30]));
register #(.SIZE(N)) ra (.clk(clk), .clr(reset), .d(Write_Data_i), .q(Q31), .clock_enable(Reg_Write_i & OneHot[31]));


mux32 #(.WIDTH(N)) RrsMux (.Sel(Read_Register_1_i), .Data(Read_Data_1_o), .I0(Q0), .I1(Q1), .I2(Q2), .I3(Q3),
.I4(Q4), .I5(Q5), .I6(Q6), .I7(Q7), .I8(Q8), .I9(Q9), .I10(Q10), .I11(Q11),.I12(Q12), .I13(Q13), .I14(Q14), .I15(Q15), .I16(Q16), .I17(Q17), 
.I18(Q18), .I19(Q19), .I20(Q20), .I21(Q21), .I22(Q22), .I23(Q23), .I24(Q24), .I25(Q25), .I26(Q26), .I27(Q27), .I28(Q28), .I29(Q29), .I30(Q30), 
.I31(Q31)); 

mux32 #(.WIDTH(N)) RrtMux (.Sel(Read_Register_2_i), .Data(Read_Data_2_o), .I0(Q0), .I1(Q1), .I2(Q2), .I3(Q3),
.I4(Q4), .I5(Q5), .I6(Q6), .I7(Q7), .I8(Q8), .I9(Q9), .I10(Q10), .I11(Q11),.I12(Q12), .I13(Q13), .I14(Q14), .I15(Q15), .I16(Q16), .I17(Q17), 
.I18(Q18), .I19(Q19), .I20(Q20), .I21(Q21), .I22(Q22), .I23(Q23), .I24(Q24), .I25(Q25), .I26(Q26), .I27(Q27), .I28(Q28), .I29(Q29), .I30(Q30), 
.I31(Q31)); 

endmodule 