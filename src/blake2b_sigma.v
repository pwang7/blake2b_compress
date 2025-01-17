`include "defines.v"

module blake2b_sigma (
    input  wire [`SigmaIndex_Bus] sigma_column,
    input  wire [`SigmaIndex_Bus] sigma_row,
    output wire [`MIndex_Bus]     m_index
    );

    reg [`MIndex_Bus] m_index_temp [11:0];
    assign m_index = m_index_temp[sigma_row];

    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[0] = 4'd0;
            4'b0001: m_index_temp[0] = 4'd1;
            4'b0010: m_index_temp[0] = 4'd2;
            4'b0011: m_index_temp[0] = 4'd3;
            4'b0100: m_index_temp[0] = 4'd4;
            4'b0101: m_index_temp[0] = 4'd5;
            4'b0110: m_index_temp[0] = 4'd6;
            4'b0111: m_index_temp[0] = 4'd7;
            4'b1000: m_index_temp[0] = 4'd8;
            4'b1001: m_index_temp[0] = 4'd9;
            4'b1010: m_index_temp[0] = 4'd10;
            4'b1011: m_index_temp[0] = 4'd11;
            4'b1100: m_index_temp[0] = 4'd12;
            4'b1101: m_index_temp[0] = 4'd13;
            4'b1110: m_index_temp[0] = 4'd14;
            4'b1111: m_index_temp[0] = 4'd15;
        endcase
    end
    
    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[1] = 4'd14;
            4'b0001: m_index_temp[1] = 4'd10;
            4'b0010: m_index_temp[1] = 4'd4;
            4'b0011: m_index_temp[1] = 4'd8;
            4'b0100: m_index_temp[1] = 4'd9;
            4'b0101: m_index_temp[1] = 4'd15;
            4'b0110: m_index_temp[1] = 4'd13;
            4'b0111: m_index_temp[1] = 4'd6;
            4'b1000: m_index_temp[1] = 4'd1;
            4'b1001: m_index_temp[1] = 4'd12;
            4'b1010: m_index_temp[1] = 4'd0;
            4'b1011: m_index_temp[1] = 4'd2;
            4'b1100: m_index_temp[1] = 4'd11;
            4'b1101: m_index_temp[1] = 4'd7;
            4'b1110: m_index_temp[1] = 4'd5;
            4'b1111: m_index_temp[1] = 4'd3;
        endcase
    end

    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[2] = 4'd11;
            4'b0001: m_index_temp[2] = 4'd8;
            4'b0010: m_index_temp[2] = 4'd12;
            4'b0011: m_index_temp[2] = 4'd0;
            4'b0100: m_index_temp[2] = 4'd5;
            4'b0101: m_index_temp[2] = 4'd2;
            4'b0110: m_index_temp[2] = 4'd15;
            4'b0111: m_index_temp[2] = 4'd13;
            4'b1000: m_index_temp[2] = 4'd10;
            4'b1001: m_index_temp[2] = 4'd14;
            4'b1010: m_index_temp[2] = 4'd3;
            4'b1011: m_index_temp[2] = 4'd6;
            4'b1100: m_index_temp[2] = 4'd7;
            4'b1101: m_index_temp[2] = 4'd1;
            4'b1110: m_index_temp[2] = 4'd9;
            4'b1111: m_index_temp[2] = 4'd4;
        endcase
    end

    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[3] = 4'd7;
            4'b0001: m_index_temp[3] = 4'd9;
            4'b0010: m_index_temp[3] = 4'd3;
            4'b0011: m_index_temp[3] = 4'd1;
            4'b0100: m_index_temp[3] = 4'd13;
            4'b0101: m_index_temp[3] = 4'd12;
            4'b0110: m_index_temp[3] = 4'd11;
            4'b0111: m_index_temp[3] = 4'd14;
            4'b1000: m_index_temp[3] = 4'd2;
            4'b1001: m_index_temp[3] = 4'd6;
            4'b1010: m_index_temp[3] = 4'd5;
            4'b1011: m_index_temp[3] = 4'd10;
            4'b1100: m_index_temp[3] = 4'd4;
            4'b1101: m_index_temp[3] = 4'd0;
            4'b1110: m_index_temp[3] = 4'd15;
            4'b1111: m_index_temp[3] = 4'd8;
        endcase
    end


    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[4] = 4'd9;
            4'b0001: m_index_temp[4] = 4'd0;
            4'b0010: m_index_temp[4] = 4'd5;
            4'b0011: m_index_temp[4] = 4'd7;
            4'b0100: m_index_temp[4] = 4'd2;
            4'b0101: m_index_temp[4] = 4'd4;
            4'b0110: m_index_temp[4] = 4'd10;
            4'b0111: m_index_temp[4] = 4'd15;
            4'b1000: m_index_temp[4] = 4'd14;
            4'b1001: m_index_temp[4] = 4'd1;
            4'b1010: m_index_temp[4] = 4'd11;
            4'b1011: m_index_temp[4] = 4'd12;
            4'b1100: m_index_temp[4] = 4'd6;
            4'b1101: m_index_temp[4] = 4'd8;
            4'b1110: m_index_temp[4] = 4'd3;
            4'b1111: m_index_temp[4] = 4'd13;
        endcase
    end


    
    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[5] = 4'd2;
            4'b0001: m_index_temp[5] = 4'd12;
            4'b0010: m_index_temp[5] = 4'd6;
            4'b0011: m_index_temp[5] = 4'd10;
            4'b0100: m_index_temp[5] = 4'd0;
            4'b0101: m_index_temp[5] = 4'd11;
            4'b0110: m_index_temp[5] = 4'd8;
            4'b0111: m_index_temp[5] = 4'd3;
            4'b1000: m_index_temp[5] = 4'd4;
            4'b1001: m_index_temp[5] = 4'd13;
            4'b1010: m_index_temp[5] = 4'd7;
            4'b1011: m_index_temp[5] = 4'd5;
            4'b1100: m_index_temp[5] = 4'd15;
            4'b1101: m_index_temp[5] = 4'd14;
            4'b1110: m_index_temp[5] = 4'd1;
            4'b1111: m_index_temp[5] = 4'd9;
        endcase
    end


    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[6] = 4'd12;
            4'b0001: m_index_temp[6] = 4'd5;
            4'b0010: m_index_temp[6] = 4'd1;
            4'b0011: m_index_temp[6] = 4'd15;
            4'b0100: m_index_temp[6] = 4'd14;
            4'b0101: m_index_temp[6] = 4'd13;
            4'b0110: m_index_temp[6] = 4'd4;
            4'b0111: m_index_temp[6] = 4'd10;
            4'b1000: m_index_temp[6] = 4'd0;
            4'b1001: m_index_temp[6] = 4'd7;
            4'b1010: m_index_temp[6] = 4'd6;
            4'b1011: m_index_temp[6] = 4'd3;
            4'b1100: m_index_temp[6] = 4'd9;
            4'b1101: m_index_temp[6] = 4'd2;
            4'b1110: m_index_temp[6] = 4'd8;
            4'b1111: m_index_temp[6] = 4'd11;
        endcase
    end


    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[7] = 4'd13;
            4'b0001: m_index_temp[7] = 4'd11;
            4'b0010: m_index_temp[7] = 4'd7;
            4'b0011: m_index_temp[7] = 4'd14;
            4'b0100: m_index_temp[7] = 4'd12;
            4'b0101: m_index_temp[7] = 4'd1;
            4'b0110: m_index_temp[7] = 4'd3;
            4'b0111: m_index_temp[7] = 4'd9;
            4'b1000: m_index_temp[7] = 4'd5;
            4'b1001: m_index_temp[7] = 4'd0;
            4'b1010: m_index_temp[7] = 4'd15;
            4'b1011: m_index_temp[7] = 4'd4;
            4'b1100: m_index_temp[7] = 4'd8;
            4'b1101: m_index_temp[7] = 4'd6;
            4'b1110: m_index_temp[7] = 4'd2;
            4'b1111: m_index_temp[7] = 4'd10;
        endcase
    end

    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[8] = 4'd6;
            4'b0001: m_index_temp[8] = 4'd15;
            4'b0010: m_index_temp[8] = 4'd14;
            4'b0011: m_index_temp[8] = 4'd9;
            4'b0100: m_index_temp[8] = 4'd11;
            4'b0101: m_index_temp[8] = 4'd3;
            4'b0110: m_index_temp[8] = 4'd0;
            4'b0111: m_index_temp[8] = 4'd8;
            4'b1000: m_index_temp[8] = 4'd12;
            4'b1001: m_index_temp[8] = 4'd2;
            4'b1010: m_index_temp[8] = 4'd13;
            4'b1011: m_index_temp[8] = 4'd7;
            4'b1100: m_index_temp[8] = 4'd1;
            4'b1101: m_index_temp[8] = 4'd4;
            4'b1110: m_index_temp[8] = 4'd10;
            4'b1111: m_index_temp[8] = 4'd5;
        endcase
    end


    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[9] = 4'd10;
            4'b0001: m_index_temp[9] = 4'd2;
            4'b0010: m_index_temp[9] = 4'd8;
            4'b0011: m_index_temp[9] = 4'd4;
            4'b0100: m_index_temp[9] = 4'd7;
            4'b0101: m_index_temp[9] = 4'd6;
            4'b0110: m_index_temp[9] = 4'd1;
            4'b0111: m_index_temp[9] = 4'd5;
            4'b1000: m_index_temp[9] = 4'd15;
            4'b1001: m_index_temp[9] = 4'd11;
            4'b1010: m_index_temp[9] = 4'd9;
            4'b1011: m_index_temp[9] = 4'd14;
            4'b1100: m_index_temp[9] = 4'd3;
            4'b1101: m_index_temp[9] = 4'd12;
            4'b1110: m_index_temp[9] = 4'd13;
            4'b1111: m_index_temp[9] = 4'd0;
        endcase
    end

    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[10] = 4'd0;
            4'b0001: m_index_temp[10] = 4'd1;
            4'b0010: m_index_temp[10] = 4'd2;
            4'b0011: m_index_temp[10] = 4'd3;
            4'b0100: m_index_temp[10] = 4'd4;
            4'b0101: m_index_temp[10] = 4'd5;
            4'b0110: m_index_temp[10] = 4'd6;
            4'b0111: m_index_temp[10] = 4'd7;
            4'b1000: m_index_temp[10] = 4'd8;
            4'b1001: m_index_temp[10] = 4'd9;
            4'b1010: m_index_temp[10] = 4'd10;
            4'b1011: m_index_temp[10] = 4'd11;
            4'b1100: m_index_temp[10] = 4'd12;
            4'b1101: m_index_temp[10] = 4'd13;
            4'b1110: m_index_temp[10] = 4'd14;
            4'b1111: m_index_temp[10] = 4'd15;
        endcase
    end
    
    always @(*) begin
        case(sigma_column)
            4'b0000: m_index_temp[11] = 4'd14;
            4'b0001: m_index_temp[11] = 4'd10;
            4'b0010: m_index_temp[11] = 4'd4;
            4'b0011: m_index_temp[11] = 4'd8;
            4'b0100: m_index_temp[11] = 4'd9;
            4'b0101: m_index_temp[11] = 4'd15;
            4'b0110: m_index_temp[11] = 4'd13;
            4'b0111: m_index_temp[11] = 4'd6;
            4'b1000: m_index_temp[11] = 4'd1;
            4'b1001: m_index_temp[11] = 4'd12;
            4'b1010: m_index_temp[11] = 4'd0;
            4'b1011: m_index_temp[11] = 4'd2;
            4'b1100: m_index_temp[11] = 4'd11;
            4'b1101: m_index_temp[11] = 4'd7;
            4'b1110: m_index_temp[11] = 4'd5;
            4'b1111: m_index_temp[11] = 4'd3;
        endcase
    end

endmodule //blake2b_sigma




