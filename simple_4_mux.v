module simple_4_mux(
    input [1:0] Sel,
    input [3:0]A, // CEO data
    input [3:0]B, // your data
    input [3:0]C, // fred data
    input [3:0]D, // jill data
    input Enable,
    output [3:0]Y
);
    assign Y = (Enable && Sel==2'b00) ? A:
               (Enable && Sel==2'b01) ? B:
               (Enable && Sel==2'b10) ? C : D;
endmodule