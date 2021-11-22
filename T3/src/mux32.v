module mux32
   #(parameter WIDTH=32)
   (input [WIDTH-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,
								I25,I26,I27,I28,I29,I30,I31,
    input [4:0] Sel,
    output [WIDTH-1:0] Data);

reg [WIDTH-1:0] Data_out;
always @(Sel) begin 
case(Sel)
5'b00000: Data_out = I0;
5'b00001: Data_out = I1;
5'b00010: Data_out = I2;
5'b00011: Data_out = I3;
5'b00100: Data_out = I4;
5'b00101: Data_out = I5;
5'b00110: Data_out = I6;
5'b00111: Data_out = I7;
5'b01000: Data_out = I8;
5'b01001: Data_out = I9;
5'b01010: Data_out = I10;
5'b01011: Data_out = I11;
5'b01100: Data_out = I12;
5'b01101: Data_out = I13;
5'b01110: Data_out = I14;
5'b01111: Data_out = I15;
5'b10000: Data_out = I16;
5'b10001: Data_out = I17;
5'b10010: Data_out = I18;
5'b10011: Data_out = I19;
5'b10100: Data_out = I20;
5'b10101: Data_out = I21;
5'b10110: Data_out = I22;
5'b10111: Data_out = I23;
5'b11000: Data_out = I24;
5'b11001: Data_out = I25;
5'b11010: Data_out = I26;
5'b11011: Data_out = I27;
5'b11100: Data_out = I28;
5'b11101: Data_out = I29;
5'b11110: Data_out = I30;
5'b11111: Data_out = I31;
endcase 
end 
assign Data = Data_out;
endmodule 