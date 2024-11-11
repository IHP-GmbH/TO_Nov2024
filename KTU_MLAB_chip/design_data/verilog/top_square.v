module top_square (
    input  wire clk_100m,     // 100 MHz clock
    input  wire btn_rst,      // reset button
    output reg vga_hsync,    // VGA horizontal sync
    output reg vga_vsync,    // VGA vertical sync
    output reg [3:0] vga_r,  // 4-bit VGA red
    output reg [3:0] vga_g,  // 4-bit VGA green
    output reg [3:0] vga_b   // 4-bit VGA blue
);
    // Sync signals and coordinates
    localparam CORDW = 10;  // screen coordinate width in bits
    wire [CORDW-1:0] sx, sy;
    wire hsync, vsync, de;
    
	wire clk_pix;

	clock_divider divider_inst(
		.clk_100m(clk_100m),
		.btn_rst(btn_rst),
		.clk_pix(clk_pix)
	);

    simple_480p display_inst (
        .clk_pix(clk_pix),
        .rst_pix(btn_rst),   // reset logic
        .sx(sx),
        .sy(sy),
        .hsync(hsync),
        .vsync(vsync),
        .de(de)
    );

    // Define a square with screen coordinates
    reg square;
    always @(*) begin
        // Square only
        //square = (sx > 220 && sx < 420) && (sy > 140 && sy < 340);
        // Square with line around screen border
        square = (sx > 220 && sx < 420) && (sy > 140 && sy < 340)
                 || (sy==0) || (sx==0) || (sy==479) || (sx==639);
    end

    // Paint color: white inside square, blue outside
    reg [3:0] paint_r, paint_g, paint_b;
    always @(*) begin
        paint_r = (square) ? 4'hF : 4'h1;
        paint_g = (square) ? 4'hF : 4'h3;
        paint_b = (square) ? 4'hF : 4'h7;
    end

    // Display color: paint color but black in blanking interval
    reg [3:0] display_r, display_g, display_b;
    always @(*) begin
        display_r = (de) ? paint_r : 4'h0;
        display_g = (de) ? paint_g : 4'h0;
        display_b = (de) ? paint_b : 4'h0;
    end

    // VGA Pmod output
    always @(posedge clk_pix) begin
        vga_hsync <= hsync;
        vga_vsync <= vsync;
        vga_r <= display_r;
        vga_g <= display_g;
        vga_b <= display_b;
    end
endmodule
