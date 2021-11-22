module onehot(din,dout);
localparam ACTIVE = 1'b1;

input [4:0] din;
output reg [31:0] dout;

always @(din) begin 
case(din)
5'b00000: dout[0] <=ACTIVE;
5'b00001: dout[1] <=ACTIVE;
5'b00010: dout[2] <=ACTIVE;
5'b00011: dout[3] <=ACTIVE;
5'b00100: dout[4] <=ACTIVE;
5'b00101: dout[5] <=ACTIVE;
5'b00110: dout[6] <=ACTIVE;
5'b00111: dout[7] <=ACTIVE;
5'b01000: dout[8] <=ACTIVE;
5'b01001: dout[9] <=ACTIVE;
5'b01010: dout[10] <=ACTIVE;
5'b01011: dout[11] <=ACTIVE;
5'b01100: dout[12] <=ACTIVE;
5'b01101: dout[13] <=ACTIVE;
5'b01110: dout[14] <=ACTIVE;
5'b01111: dout[15] <=ACTIVE;
5'b10000: dout[16] <=ACTIVE;
5'b10001: dout[17] <=ACTIVE;
5'b10010: dout[18] <=ACTIVE;
5'b10011: dout[19] <=ACTIVE;
5'b10100: dout[20] <=ACTIVE;
5'b10101: dout[21] <=ACTIVE;
5'b10110: dout[22] <=ACTIVE;
5'b10111: dout[23] <=ACTIVE;
5'b11000: dout[24] <=ACTIVE;
5'b11001: dout[25] <=ACTIVE;
5'b11010: dout[26] <=ACTIVE;
5'b11011: dout[27] <=ACTIVE;
5'b11100: dout[28] <=ACTIVE;
5'b11101: dout[29] <=ACTIVE;
5'b11110: dout[30] <=ACTIVE;
5'b11111: dout[31] <=ACTIVE;
endcase 
end 
endmodule