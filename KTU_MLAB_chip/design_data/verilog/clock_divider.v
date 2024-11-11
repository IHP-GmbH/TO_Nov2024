module clock_divider(
	input clk_100m,
	input btn_rst,
	output clk_pix
);

// Turn 100MHz clock to 25MHz for pixel output

	reg clk_pix_reg;
    reg [15:0] cnt;

	assign clk_pix = clk_pix_reg;
/*
    always @(posedge clk_100m or posedge btn_rst) begin// For every four posedge clk we get one posedge pix_stb
        cnt <= !cnt;
        clk_pix_reg <= clk_pix_reg;
        if(btn_rst)begin
            clk_pix_reg <= 0;
            cnt <= 0;
        end
        else if(cnt)
            clk_pix_reg <= !clk_pix_reg;
    end
*/
	always @(posedge clk_100m or posedge btn_rst) begin// For every four posedge clk we get one posedge pix_stb
        if(btn_rst)begin
            clk_pix_reg <= 0;
            cnt <= 0;
		end
		else begin
			cnt <= !cnt;
			if(cnt)
				clk_pix_reg <= !clk_pix_reg;
			else
        		clk_pix_reg <= clk_pix_reg;
		end
    end
endmodule
