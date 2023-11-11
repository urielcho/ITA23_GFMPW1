/// sta-blackbox
module contador43(
    output reg [3:0] count=0,
    input  clk
    );
    
    always @(posedge clk)
        if(count == 4'd11)
            count <= 4'b0;
        else
        count <= count + 1'b1;
endmodule

module ita43(
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input clk,
    output reg [11:0] sel,
    output reg [13:0] segm
    );
wire [3:0] cont;
contador43 dut43(
.clk(clk),
.count(cont)
);
reg [13:0] a = 14'b11101111000000;
//reg [13:0] b = 14'b11110001010010;
//reg [13:0] c = 14'b10011100000000;
//reg [13:0] d = 14'b11110000010010;
//reg [13:0] e = 14'b10011110000000;
//reg [13:0] f = 14'b10001110000000;
//reg [13:0] g = 14'b10111101000000;
//reg [13:0] h = 14'b01101111000000;
//reg [13:0] i = 14'b10010000010010;
//reg [13:0] j = 14'b01111000000000;
//reg [13:0] k = 14'b00001110001100;
//reg [13:0] l = 14'b00011100000000;
reg [13:0] m = 14'b01101100101000;
reg [13:0] n = 14'b01101100100100;
//reg [13:0] nn = 14'b10101011000000;
reg [13:0] o = 14'b11111100000000;
//reg [13:0] p = 14'b11001111000000;
//reg [13:0] q = 14'b11111100000100;
//reg [13:0] r = 14'b11001111000100;
//reg [13:0] s = 14'b10110111000000;
reg [13:0] t = 14'b10000000010010;
//reg [13:0] u = 14'b01111100000000;
//reg [13:0] v = 14'b00001100001001;
//reg [13:0] w = 14'b01101100000101;
//reg [13:0] x = 14'b00000000101101;
reg [13:0] y = 14'b00000000101010;
//reg [13:0] z = 14'b10010000001001;
//reg [13:0] uno = 14'b01100000001000;
//reg [13:0] dos = 14'b11011011000000;
//reg [13:0] tres = 14'b11110001000000;
//reg [13:0] cuatro = 14'b01100111000000;
//reg [13:0] cinco = 14'b10110111000000;
//reg [13:0] seis = 14'b10111111000000;
//reg [13:0] siete = 14'b11100000000000;
//reg [13:0] ocho = 14'b11111111000000;
//reg [13:0] nueve = 14'b11110111000000;
reg [13:0] cero = 14'b11111100001001;
//reg [13:0] espacio = 14'b00000000000000;
always@(posedge clk)
begin
    if(cont==4'b0000)
    begin
    //1
        sel<=12'b000000000001;
        segm<=m;
    end

    if(cont==4'b0001)
    begin
    //2    
        sel<=12'b000000000010;
        segm<=o;
    end

    if(cont==4'b0010)
    begin
    //3    
        sel<=12'b000000000100;
        segm<=n;
    end

    if(cont==4'b0011)
    begin
    //4    
        sel<=12'b000000001000;
        segm<=t;
    end

    if(cont==4'b0100)
    begin
    //5    
        sel<=12'b000000010000;
        segm<=o;
    end

    if(cont==4'b0101)
    begin
    //6    
        sel<=12'b000000100000;
        segm<=y;
    end

    if(cont==4'b0110)
    begin
    //7    
        sel<=12'b000001000000;
        segm<=a;
    end 

    if(cont==4'b0111)
    begin
    //8    
        sel<=12'b000010000000;
        segm<=cero;
    end 

    if(cont==4'b1000)
    begin
    //9    
        sel<=12'b000100000000;
        segm<=cero;
    end

    if(cont==4'b1001)
    begin
    //10    
        sel<=12'b001000000000;
        segm<=cero;
    end
    
    if(cont==4'b1010)
    begin
    //11   
        sel<=12'b010000000000;
        segm<=cero;
    end
    
    if(cont==4'b1011)
    begin
    //12   
        sel<=12'b100000000000;
        segm<=cero;
    end
end
endmodule









//7-caracteres:montoya,el resto son ceros.
