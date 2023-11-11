/// sta-blackbox
module ita(
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input clk,
    input [5:0] nsel,
    input [767:0] itasel,
    input [895:0] itasegm,
    output reg [11:0] sel,
    output reg [13:0] segm,
    output [37:0] io_oeb
);
assign io_oeb[11:0] = {12{1'b1}};
assign io_oeb[37:12] = {26{1'b0}};

always @(posedge clk) begin
    case (nsel)
        6'b000000: begin
            sel <= itasel[11:0];
            segm <= itasegm[13:0];
        end
        6'b000001: begin
            sel <= itasel[23:12];
            segm <= itasegm[27:14];
        end
        6'b000010: begin
            sel <= itasel[35:24];
            segm <= itasegm[41:28];
        end
        6'b000011: begin
            sel <= itasel[47:36];
            segm <= itasegm[55:42];
        end
        6'b000100: begin
            sel <= itasel[59:48];
            segm <= itasegm[69:56];
        end
        6'b000101: begin
            sel <= itasel[71:60];
            segm <= itasegm[83:70];
        end
        6'b000110: begin
            sel <= itasel[83:72];
            segm <= itasegm[97:84];
        end
        6'b000111: begin
            sel <= itasel[95:84];
            segm <= itasegm[111:98];
        end
        6'b001000: begin
            sel <= itasel[107:96];
            segm <= itasegm[125:112];
        end
        6'b001001: begin
            sel <= itasel[119:108];
            segm <= itasegm[139:126];
        end
        6'b001010: begin
            sel <= itasel[131:120];
            segm <= itasegm[153:140];
        end
        6'b001011: begin
            sel <= itasel[143:132];
            segm <= itasegm[167:154];
        end
        6'b001100: begin
            sel <= itasel[155:144];
            segm <= itasegm[181:168];
        end
        6'b001101: begin
            sel <= itasel[167:156];
            segm <= itasegm[195:182];
        end
        6'b001110: begin
            sel <= itasel[179:168];
            segm <= itasegm[209:196];
        end
        6'b001111: begin
            sel <= itasel[191:180];
            segm <= itasegm[223:210];
        end
        6'b010000: begin
            sel <= itasel[203:192];
            segm <= itasegm[237:224];
        end
        6'b010001: begin
            sel <= itasel[215:204];
            segm <= itasegm[251:238];
        end
        6'b010010: begin
            sel <= itasel[227:216];
            segm <= itasegm[265:252];
        end
        6'b010011: begin
            sel <= itasel[239:228];
            segm <= itasegm[279:266];
        end
        6'b010100: begin
            sel <= itasel[251:240];
            segm <= itasegm[293:280];
        end
        6'b010101: begin
            sel <= itasel[263:252];
            segm <= itasegm[307:294];
        end
        6'b010110: begin
            sel <= itasel[275:264];
            segm <= itasegm[321:308];
        end
        6'b010111: begin
            sel <= itasel[287:276];
            segm <= itasegm[335:322];
        end
        6'b011000: begin
            sel <= itasel[299:288];
            segm <= itasegm[349:336];
        end
        6'b011001: begin
            sel <= itasel[311:300];
            segm <= itasegm[363:350];
        end
        6'b011010: begin
            sel <= itasel[323:312];
            segm <= itasegm[377:364];
        end
        6'b011011: begin
            sel <= itasel[335:324];
            segm <= itasegm[391:378];
        end
        6'b011100: begin
            sel <= itasel[347:336];
            segm <= itasegm[405:392];
        end
        6'b011101: begin
            sel <= itasel[359:348];
            segm <= itasegm[419:406];
        end
        6'b011110: begin
            sel <= itasel[371:360];
            segm <= itasegm[433:420];
        end
        6'b011111: begin
            sel <= itasel[383:372];
            segm <= itasegm[447:434];
        end
        6'b100000: begin
            sel <= itasel[395:384];
            segm <= itasegm[461:448];
        end
        6'b100001: begin
            sel <= itasel[407:396];
            segm <= itasegm[475:462];
        end
        6'b100010: begin
            sel <= itasel[419:408];
            segm <= itasegm[489:476];
        end
        6'b100011: begin
            sel <= itasel[431:420];
            segm <= itasegm[503:490];
        end
        6'b100100: begin
            sel <= itasel[443:432];
            segm <= itasegm[517:504];
        end
        6'b100101: begin
            sel <= itasel[455:444];
            segm <= itasegm[531:518];
        end
        6'b100110: begin
            sel <= itasel[467:456];
            segm <= itasegm[545:532];
        end
        6'b100111: begin
            sel <= itasel[479:468];
            segm <= itasegm[559:546];
        end
        6'b101000: begin
            sel <= itasel[491:480];
            segm <= itasegm[573:560];
        end
        6'b101001: begin
            sel <= itasel[503:492];
            segm <= itasegm[587:574];
        end
        6'b101010: begin
            sel <= itasel[515:504];
            segm <= itasegm[601:588];
        end
        6'b101011: begin
            sel <= itasel[527:516];
            segm <= itasegm[615:602];
        end
        6'b101100: begin
            sel <= itasel[539:528];
            segm <= itasegm[629:616];
        end
        6'b101101: begin
            sel <= itasel[551:540];
            segm <= itasegm[643:630];
        end
        6'b101110: begin
            sel <= itasel[563:552];
            segm <= itasegm[657:644];
        end
        6'b101111: begin
            sel <= itasel[575:564];
            segm <= itasegm[671:658];
        end
        6'b110000: begin
            sel <= itasel[587:576];
            segm <= itasegm[685:672];
        end
        6'b110001: begin
            sel <= itasel[599:588];
            segm <= itasegm[699:686];
        end
        6'b110010: begin
            sel <= itasel[611:600];
            segm <= itasegm[713:700];
        end
        6'b110011: begin
            sel <= itasel[623:612];
            segm <= itasegm[727:714];
        end
        6'b110100: begin
            sel <= itasel[635:624];
            segm <= itasegm[741:728];
        end
        6'b110101: begin
            sel <= itasel[647:636];
            segm <= itasegm[755:742];
        end
        6'b110110: begin
            sel <= itasel[659:648];
            segm <= itasegm[769:756];
        end
        6'b110111: begin
            sel <= itasel[671:660];
            segm <= itasegm[783:770];
        end
        6'b111000: begin
            sel <= itasel[683:672];
            segm <= itasegm[797:784];
        end
        6'b111001: begin
            sel <= itasel[695:684];
            segm <= itasegm[811:798];
        end
        6'b111010: begin
            sel <= itasel[707:696];
            segm <= itasegm[825:812];
        end
        6'b111011: begin
            sel <= itasel[719:708];
            segm <= itasegm[839:826];
        end
        6'b111100: begin
            sel <= itasel[731:720];
            segm <= itasegm[853:840];
        end
        6'b111101: begin
            sel <= itasel[743:732];
            segm <= itasegm[867:854];
        end
        6'b111110: begin
            sel <= itasel[755:744];
            segm <= itasegm[881:868];
        end
        6'b111111: begin
            sel <= itasel[767:756];
            segm <= itasegm[895:882];
        end
        default: begin
            // Manejar un caso predeterminado si es necesario
        end
    endcase
end

endmodule
