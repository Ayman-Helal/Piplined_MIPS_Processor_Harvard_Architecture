module Four_In_Mux(
    input [31:0] IN1,
    input [31:0] IN2,
    input [31:0] IN3,
    input [1:0]  sel,
    output reg [31:0] OUT      
);

always @(*) begin
    OUT = 32'b0;
    case(sel)
    2'b00: OUT = IN1;
    2'b01: OUT = IN2;
    2'b10: OUT = IN3;
    default: OUT = 32'b0;
    endcase
end
endmodule