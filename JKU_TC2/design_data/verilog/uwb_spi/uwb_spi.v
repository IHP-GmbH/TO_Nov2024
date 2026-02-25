module uwb_spi (
    input wire clk,           // Clock input
    input wire load,           // load
    input wire serial_in,     // Serial input (from the right)
    output wire serial_out,   // Serial output (from the left)
    output reg [39:0] data_reg // Data register
);

    reg [39:0] shift_reg; // 40-bit shift register
        	
    always @(posedge clk) begin
        shift_reg <= {serial_in, shift_reg[39:1]}; // Right shift and input from the right when 
        if (load) begin
            data_reg <= shift_reg; // Save data from the shift register to the data register when load is asserted
        end
    end

    assign serial_out = shift_reg[0]; // Output from the left

endmodule // uwb_dig
