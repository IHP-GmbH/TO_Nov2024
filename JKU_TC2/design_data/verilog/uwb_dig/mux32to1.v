module mux32to1 (
    input [31:0] in,  // 32 input signals
    input [4:0] sel,  // 5 select lines
    output out        // Output
);

    wire y0, y1, y2, y3, y4, y5, y6, y7;  // Intermediate signals for first and second levels

    // First Level: 8 instances of 4-to-1 MUX (handling 32 inputs)
    sg13g2_mux4_1 mux0 (
        .A0(in[0]),
        .A1(in[1]),
        .A2(in[2]),
        .A3(in[3]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y0)
    );

    sg13g2_mux4_1 mux1 (
        .A0(in[4]),
        .A1(in[5]),
        .A2(in[6]),
        .A3(in[7]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y1)
    );

    sg13g2_mux4_1 mux2 (
        .A0(in[8]),
        .A1(in[9]),
        .A2(in[10]),
        .A3(in[11]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y2)
    );

    sg13g2_mux4_1 mux3 (
        .A0(in[12]),
        .A1(in[13]),
        .A2(in[14]),
        .A3(in[15]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y3)
    );

    sg13g2_mux4_1 mux4 (
        .A0(in[16]),
        .A1(in[17]),
        .A2(in[18]),
        .A3(in[19]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y4)
    );

    sg13g2_mux4_1 mux5 (
        .A0(in[20]),
        .A1(in[21]),
        .A2(in[22]),
        .A3(in[23]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y5)
    );

    sg13g2_mux4_1 mux6 (
        .A0(in[24]),
        .A1(in[25]),
        .A2(in[26]),
        .A3(in[27]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y6)
    );

    sg13g2_mux4_1 mux7 (
        .A0(in[28]),
        .A1(in[29]),
        .A2(in[30]),
        .A3(in[31]),
        .S0(sel[0]),
        .S1(sel[1]),
        .X(y7)
    );

    // Second Level: 4 instances of 4-to-1 MUX (select between the outputs of the first level)
    wire z0, z1;

    sg13g2_mux4_1 mux8 (
        .A0(y0),
        .A1(y1),
        .A2(y2),
        .A3(y3),
        .S0(sel[2]),
        .S1(sel[3]),
        .X(z0)
    );

    sg13g2_mux4_1 mux9 (
        .A0(y4),
        .A1(y5),
        .A2(y6),
        .A3(y7),
        .S0(sel[2]),
        .S1(sel[3]),
        .X(z1)
    );

    // Third Level: 1 instance of 4-to-1 MUX (final selection between second level outputs)
    sg13g2_mux4_1 mux10 (
        .A0(z0),
        .A1(z1),
        .A2(1'b0),  // Unused inputs set to 0
        .A3(1'b0),
        .S0(sel[4]),
        .S1(1'b0),  // Since only 2 options in this level, second select bit is tied to 0
        .X(out)
    );

endmodule

