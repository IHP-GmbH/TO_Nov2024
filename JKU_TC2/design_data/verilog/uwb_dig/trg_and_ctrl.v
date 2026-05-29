module trg_and_ctrl (
    input wire trg,
    input wire [3:0] ctrl,
    output wire [3:0] trg_gc_buff
);

    wire [3:0] trg_gc;  // Intermediate signal after AND gate
    
    // Instantiate the AND gates for each bit of trg_gc
    sg13g2_and2_1 xand0 (
        .A(ctrl[0]),
        .B(trg),
        .X(trg_gc[0])
    );
    
    sg13g2_and2_1 xand1 (
        .A(ctrl[1]),
        .B(trg),
        .X(trg_gc[1])
    );
    
    sg13g2_and2_1 xand2 (
        .A(ctrl[2]),
        .B(trg),
        .X(trg_gc[2])
    );
    
    sg13g2_and2_1 xand3 (
        .A(ctrl[3]),
        .B(trg),
        .X(trg_gc[3])
    );

    // Instantiate the buffers for each bit of trg_gc
    sg13g2_buf_16 xbuff0 (
        .A(trg_gc[0]),
        .X(trg_gc_buff[0])
    );
    
    sg13g2_buf_16 xbuff1 (
        .A(trg_gc[1]),
        .X(trg_gc_buff[1])
    );
    
    sg13g2_buf_16 xbuff2 (
        .A(trg_gc[2]),
        .X(trg_gc_buff[2])
    );
    
    sg13g2_buf_16 xbuff3 (
        .A(trg_gc[3]),
        .X(trg_gc_buff[3])
    );

endmodule

