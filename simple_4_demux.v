module simple_4_demux(
    input [3:0]In,
    input [1:0]Sel,
    input Enable,
    output [3:0] Y1, // Library
    output [3:0] Y2, // Fire Department
    output [3:0] Y3, // School
    output [3:0] Y4 // Rib Shack
    );
    
 assign Y1 = (Enable && Sel == 2'b00) ? In : 4'b0;
 assign Y2 = (Enable && Sel == 2'b01) ? In : 4'b0;
 assign Y3 = (Enable && Sel == 2'b10) ? In : 4'b0;
 assign Y4 = (Enable && Sel == 2'b11) ? In : 4'b0;
 
endmodule
