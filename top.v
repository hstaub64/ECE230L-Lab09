module top(
    input [15:0] sw,
    input btnL, btnC, btnU, btnR, btnD,
    output [15:0] led
    );
        
wire [3:0] internet_line;

wire [1:0] mux_sel = {btnU, btnL};
wire [1:0] demux_sel = {btnR, btnD};

simple_4_mux mux(
    .A(sw[3:0]),
    .B(sw[7:4]),
    .C(sw[11:8]),
    .D(sw[15:12]),
    .Sel(mux_sel),
    .Enable(btnC),
    .Y(internet_line)
);

simple_4_demux demux(
    .In(internet_line),
    .Sel(demux_sel),
    .Enable(btnC),
    .Y1(led[3:0]),
    .Y2(led[7:4]),
    .Y3(led[11:8]),
    .Y4(led[15:12])
);

endmodule
