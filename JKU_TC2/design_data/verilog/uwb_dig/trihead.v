module trihead (
    inout pin1,   // Pin 1
    inout pin2,   // Pin 2
    inout pin3,   // Pin 3
    input en1,    // Enable for buffer between pin1 and pin2 (active low)
    input en2,    // Enable for buffer between pin2 and pin3 (active low)
    input en3     // Enable for buffer between pin1 and pin3 (active low)
);

    // Buffer between pin1 and pin2
    sg13g2_ebufn_8 buffer1 (
        .Z(pin2),  // Output goes to pin2
        .A(pin1),  // Input comes from pin1
        .TE_B(en1) // Active low enable
    );

    // Buffer between pin2 and pin3
    sg13g2_ebufn_8 buffer2 (
        .Z(pin3),  // Output goes to pin3
        .A(pin2),  // Input comes from pin2
        .TE_B(en2) // Active low enable
    );

    // Buffer between pin1 and pin3
    sg13g2_ebufn_8 buffer3 (
        .Z(pin3),  // Output goes to pin3
        .A(pin1),  // Input comes from pin1
        .TE_B(en3) // Active low enable
    );

    // NAND gate for controlling the new buffer
    wire nand_en;
    sg13g2_nand2_1 nand_gate (
        .Y(nand_en),   // Output of NAND gate
        .A(en2),       // First input to NAND gate
        .B(en3)        // Second input to NAND gate
    );

    // Additional buffer to set pin3 to 0 when both en2 and en3 are active
    sg13g2_ebufn_8 buffer4 (
        .Z(pin3),    // Output goes to pin3
        .A(1'b0),    // Input is constant 0
        .TE_B(nand_en) // Enable is the NAND of en2 and en3
    );

endmodule

