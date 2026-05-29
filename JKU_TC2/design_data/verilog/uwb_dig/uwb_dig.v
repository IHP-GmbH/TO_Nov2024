module uwb_dig (
    input wire trg_in,            // input trigger
    input wire [4:0] bw_ctrl,     // 5-bit bw control
    input wire [1:0] trg_ctrl,    // 2-bit trg control
    input wire [3:0] osc_gain,    // osc gain control
    input wire [3:0] pa_gain,     // pa gain control
    inout wire trg_ext1,         // output trigger1
    inout wire trg_ext2,         // output trigger2
    input wire [2:0] trg_ext_ctrl, // trihead ctrl
    output wire [3:0] pa_trg,     // pa trigger (gain controlled)
    output wire [3:0] osc_trg1,   // osc trigger (gain controlled)
    output wire [3:0] osc_trg2    // osc trigger (gain controlled)
);

    wire trg_out1_2mux;
    wire trg_out1_2buf;
    wire trg_out2_2buf;
    wire trg_out1_2trihead;
    wire trg_out2_2trihead;
    
    // Instantiate the bwcontrol submodule
    bwcontrol bwctrl_inst (
        .trg_in(trg_in),
        .bw_ctrl(bw_ctrl),
        .trg_out1_2mux(trg_out1_2mux)
    );

    // Instantiate the faststart submodule
    faststart fs_inst (
        .trg_out1_2mux(trg_out1_2mux),
        .trg_ctrl(trg_ctrl),
        .trg_out1_2buf(trg_out1_2trihead),
        .trg_out2_2buf(trg_out2_2trihead)
    );

    // Insert trihead buffer for trg_out2
    trihead trihead1 (
        .pin1(trg_out1_2trihead),  // Output from faststart module
        .pin2(trg_ext1),           // New wire for external trigger 1
        .pin3(trg_out1_2buf),      // Input to trg_and_ctrl (for PA and OSC)
        .en1(trg_ext_ctrl[0]),                // Enable buffer between pin1 and pin2 (active low)
        .en2(trg_ext_ctrl[1]),                // Enable buffer between pin2 and pin3 (active low)
        .en3(trg_ext_ctrl[2])                 // Enable buffer between pin1 and pin3 (active low)
    );

    // Insert trihead buffer for trg_out2
    trihead trihead2 (
        .pin1(trg_out2_2trihead),  // Output from faststart module
        .pin2(trg_ext2),           // New wire for external trigger 1
        .pin3(trg_out2_2buf),      // Input to trg_and_ctrl (for PA and OSC)
        .en1(trg_ext_ctrl[0]),                // Enable buffer between pin1 and pin2 (active low)
        .en2(trg_ext_ctrl[1]),                // Enable buffer between pin2 and pin3 (active low)
        .en3(trg_ext_ctrl[2])                 // Enable buffer between pin1 and pin3 (active low)
    );


    // PA trigger control
    trg_and_ctrl gc_pa (
        .trg(trg_out1_2buf),              // Connect trg input
        .ctrl(pa_gain),                   // Connect ctrl[3:0] input
        .trg_gc_buff(pa_trg)              // Connect trg_gc_buff[3:0] output
    );
    
    // OSC trigger control 1
    trg_and_ctrl gc_osc1 (
        .trg(trg_out1_2buf),              // Connect trg input
        .ctrl(osc_gain),                  // Connect ctrl[3:0] input
        .trg_gc_buff(osc_trg1)            // Connect trg_gc_buff[3:0] output
    );
    
    // OSC trigger control 2
    trg_and_ctrl gc_osc2 (
        .trg(trg_out2_2buf),              // Connect trg input
        .ctrl(osc_gain),                  // Connect ctrl[3:0] input
        .trg_gc_buff(osc_trg2)            // Connect trg_gc_buff[3:0] output
    );

endmodule
