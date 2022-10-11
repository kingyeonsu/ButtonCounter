`timescale 1ns / 1ps

module counter(
    input i_clk,
    input i_reset,
    
    output [7:0] o_counter
    );

    reg [7:0] r_counter = 0;
    assign o_counter = r_counter;

    always @(posedge i_clk or posedge i_reset) begin    // posedge --> rising edge --> 누를 때
        if (i_reset) begin
            r_counter <= 0; 
        end
        else begin  // i_btn_clk
            r_counter <= r_counter + 1;
        end
    end


endmodule
