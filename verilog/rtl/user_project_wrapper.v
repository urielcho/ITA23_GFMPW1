// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdd,		// User area 5.0V supply
    inout vss,		// User area ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

ita ita(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
.clk(wb_clk_i),
.sel(io_out [23:12]),
.segm(io_out [37:24]),
.nsel(io_in [11:6]),
.io_oeb(io_oeb[37:0]),
.itasel(itasel1),
.itasegm(itasegm1)
);

wire [767:0] itasel1;
wire [895:0] itasegm1;

ita1 ita1(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[11:0]),
    .segm(itasegm1[13:0])
);

ita2 ita2(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[23:12]),
    .segm(itasegm1[27:14])
);

ita3 ita3(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[35:24]),
    .segm(itasegm1[41:28])
);

ita4 ita4(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[47:36]),
    .segm(itasegm1[55:42])
);

ita5 ita5(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[59:48]),
    .segm(itasegm1[69:56])
);

ita6 ita6(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[71:60]),
    .segm(itasegm1[83:70])
);

ita7 ita7(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[83:72]),
    .segm(itasegm1[97:84])
);

ita8 ita8(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[95:84]),
    .segm(itasegm1[111:98])
);

ita9 ita9(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[107:96]),
    .segm(itasegm1[125:112])
);

ita10 ita10(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[119:108]),
    .segm(itasegm1[139:126])
);

ita11 ita11(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[131:120]),
    .segm(itasegm1[153:140])
);

ita12 ita12(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[143:132]),
    .segm(itasegm1[167:154])
);

ita13 ita13(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[155:144]),
    .segm(itasegm1[181:168])
);

ita14 ita14(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[167:156]),
    .segm(itasegm1[195:182])
);

ita15 ita15(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[179:168]),
    .segm(itasegm1[209:196])
);

ita16 ita16(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[191:180]),
    .segm(itasegm1[223:210])
);

ita17 ita17(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[203:192]),
    .segm(itasegm1[237:224])
);

ita18 ita18(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[215:204]),
    .segm(itasegm1[251:238])
);

ita19 ita19(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[227:216]),
    .segm(itasegm1[265:252])
);

ita20 ita20(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[239:228]),
    .segm(itasegm1[279:266])
);

ita21 ita21(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[251:240]),
    .segm(itasegm1[293:280])
);

ita22 ita22(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[263:252]),
    .segm(itasegm1[307:294])
);

ita23 ita23(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[275:264]),
    .segm(itasegm1[321:308])
);

ita24 ita24(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[287:276]),
    .segm(itasegm1[335:322])
);

ita25 ita25(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[299:288]),
    .segm(itasegm1[349:336])
);

ita26 ita26(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[311:300]),
    .segm(itasegm1[363:350])
);

ita27 ita27(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[323:312]),
    .segm(itasegm1[377:364])
);

ita28 ita28(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[335:324]),
    .segm(itasegm1[391:378])
);

ita29 ita29(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[347:336]),
    .segm(itasegm1[405:392])
);

ita30 ita30(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[359:348]),
    .segm(itasegm1[419:406])
);

ita31 ita31(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[371:360]),
    .segm(itasegm1[433:420])
);

ita32 ita32(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[383:372]),
    .segm(itasegm1[447:434])
);

ita33 ita33(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[395:384]),
    .segm(itasegm1[461:448])
);

ita34 ita34(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[407:396]),
    .segm(itasegm1[475:462])
);

ita35 ita35(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[419:408]),
    .segm(itasegm1[489:476])
);

ita36 ita36(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[431:420]),
    .segm(itasegm1[503:490])
);

ita37 ita37(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[443:432]),
    .segm(itasegm1[517:504])
);

ita38 ita38(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[455:444]),
    .segm(itasegm1[531:518])
);

ita39 ita39(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[467:456]),
    .segm(itasegm1[545:532])
);

ita40 ita40(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[479:468]),
    .segm(itasegm1[559:546])
);

ita41 ita41(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[491:480]),
    .segm(itasegm1[573:560])
);

ita42 ita42(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[503:492]),
    .segm(itasegm1[587:574])
);

ita43 ita43(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[515:504]),
    .segm(itasegm1[601:588])
);

ita44 ita44(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[527:516]),
    .segm(itasegm1[615:602])
);

ita45 ita45(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[539:528]),
    .segm(itasegm1[629:616])
);

ita46 ita46(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[551:540]),
    .segm(itasegm1[643:630])
);

ita47 ita47(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[563:552]),
    .segm(itasegm1[657:644])
);

ita48 ita48(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[575:564]),
    .segm(itasegm1[671:658])
);

ita49 ita49(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[587:576]),
    .segm(itasegm1[685:672])
);

ita50 ita50(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[599:588]),
    .segm(itasegm1[699:686])
);

ita51 ita51(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[611:600]),
    .segm(itasegm1[713:700])
);

ita52 ita52(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[623:612]),
    .segm(itasegm1[727:714])
);

ita53 ita53(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[635:624]),
    .segm(itasegm1[741:728])
);

ita54 ita54(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[647:636]),
    .segm(itasegm1[755:742])
);

ita55 ita55(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[659:648]),
    .segm(itasegm1[769:756])
);

ita56 ita56(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[671:660]),
    .segm(itasegm1[783:770])
);

ita57 ita57(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[683:672]),
    .segm(itasegm1[797:784])
);

ita58 ita58(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[695:684]),
    .segm(itasegm1[811:798])
);

ita59 ita59(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[707:696]),
    .segm(itasegm1[825:812])
);

ita60 ita60(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[719:708]),
    .segm(itasegm1[839:826])
);

ita61 ita61(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[731:720]),
    .segm(itasegm1[853:840])
);

ita62 ita62(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[743:732]),
    .segm(itasegm1[867:854])
);

ita63 ita63(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[755:744]),
    .segm(itasegm1[881:868])
);

ita64 ita64(
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif
    .clk(wb_clk_i),
    .sel(itasel1[767:756]),
    .segm(itasegm1[895:882])
);


endmodule	// user_project_wrapper

`default_nettype wire
