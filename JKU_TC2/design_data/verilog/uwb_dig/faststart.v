module faststart (
    input wire trg_out1_2mux,     // delayed and ANDed trigger signal
    input wire [1:0] trg_ctrl,    // 2-bit control signal
    output wire trg_out1_2buf,    // output trigger1 buffer
    output wire trg_out2_2buf     // output trigger2 buffer
);

    wire [5:0] m;  // Intermediate signals for inverter chain

    // MUX for trg_out1
    sg13g2_mux4_1 uut3 (
        .A0(trg_out1_2mux),
        .A1(trg_out1_2mux),
        .A2(trg_out1_2mux),
        .A3(trg_out1_2mux),
        .S0(trg_ctrl[0]),
        .S1(trg_ctrl[1]),
        .X(trg_out1_2buf)
    );

    // Chain of inverters for trg_out2
    sg13g2_inv_1 inv2 (.Y(m[0]), .A(trg_out1_2mux));
    genvar j;
    generate
        for (j = 1; j < 6; j = j + 1) begin : inverter_gen2
            sg13g2_inv_1 xinv2 (.Y(m[j]), .A(m[j-1]));  // Chain of inverters
        end
    endgenerate

    // MUX for trg_out2
    sg13g2_mux4_1 uut2 (
        .A0(trg_out1_2mux),
        .A1(m[1]),
        .A2(m[3]),
        .A3(m[5]),
        .S0(trg_ctrl[0]),
        .S1(trg_ctrl[1]),
        .X(trg_out2_2buf)
    );

endmodule

