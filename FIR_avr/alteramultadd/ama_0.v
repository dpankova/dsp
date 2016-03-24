// megafunction wizard: %Altera Multiply Adder v13.1%
// GENERATION: XML
// ama_0.v

// Generated using ACDS version 13.1 162 at 2016.02.16.17:41:31

`timescale 1 ps / 1 ps
module ama_0 #(
		parameter selected_device_family = "Cyclone V"
	) (
		output wire [39:0] result,   //   result.result
		input  wire [19:0] dataa_0,  //  dataa_0.dataa_0
		input  wire [19:0] dataa_1,  //  dataa_1.dataa_1
		input  wire [19:0] dataa_2,  //  dataa_2.dataa_2
		input  wire [19:0] dataa_3,  //  dataa_3.dataa_3
		input  wire        clock0,   //   clock0.clk
		input  wire [2:0]  coefsel0, // coefsel0.coefsel0
		input  wire [2:0]  coefsel1, // coefsel1.coefsel1
		input  wire [2:0]  coefsel2, // coefsel2.coefsel2
		input  wire [2:0]  coefsel3, // coefsel3.coefsel3
		input  wire [39:0] chainin   //  chainin.chainin
	);

	altera_mult_add #(
		.number_of_multipliers             (4),
		.width_a                           (20),
		.width_b                           (20),
		.width_result                      (40),
		.output_register                   ("CLOCK0"),
		.output_aclr                       ("NONE"),
		.multiplier1_direction             ("ADD"),
		.port_addnsub1                     ("PORT_UNUSED"),
		.addnsub_multiplier_register1      ("UNREGISTERED"),
		.addnsub_multiplier_aclr1          ("NONE"),
		.multiplier3_direction             ("ADD"),
		.port_addnsub3                     ("PORT_UNUSED"),
		.addnsub_multiplier_register3      ("UNREGISTERED"),
		.addnsub_multiplier_aclr3          ("NONE"),
		.representation_a                  ("UNSIGNED"),
		.port_signa                        ("PORT_UNUSED"),
		.signed_register_a                 ("UNREGISTERED"),
		.signed_aclr_a                     ("NONE"),
		.port_signb                        ("PORT_UNUSED"),
		.representation_b                  ("UNSIGNED"),
		.signed_register_b                 ("UNREGISTERED"),
		.signed_aclr_b                     ("NONE"),
		.input_register_a0                 ("CLOCK0"),
		.input_register_a1                 ("CLOCK0"),
		.input_register_a2                 ("CLOCK0"),
		.input_register_a3                 ("CLOCK0"),
		.input_aclr_a0                     ("NONE"),
		.input_aclr_a1                     ("NONE"),
		.input_aclr_a2                     ("NONE"),
		.input_aclr_a3                     ("NONE"),
		.input_register_b0                 ("CLOCK0"),
		.input_register_b1                 ("CLOCK0"),
		.input_register_b2                 ("CLOCK0"),
		.input_register_b3                 ("CLOCK0"),
		.input_aclr_b0                     ("NONE"),
		.input_aclr_b1                     ("NONE"),
		.input_aclr_b2                     ("NONE"),
		.input_aclr_b3                     ("NONE"),
		.scanouta_register                 ("UNREGISTERED"),
		.scanouta_aclr                     ("NONE"),
		.input_source_a0                   ("DATAA"),
		.input_source_a1                   ("DATAA"),
		.input_source_a2                   ("DATAA"),
		.input_source_a3                   ("DATAA"),
		.input_source_b0                   ("DATAB"),
		.input_source_b1                   ("DATAB"),
		.input_source_b2                   ("DATAB"),
		.input_source_b3                   ("DATAB"),
		.multiplier_register0              ("UNREGISTERED"),
		.multiplier_register1              ("UNREGISTERED"),
		.multiplier_register2              ("UNREGISTERED"),
		.multiplier_register3              ("UNREGISTERED"),
		.multiplier_aclr0                  ("NONE"),
		.multiplier_aclr1                  ("NONE"),
		.multiplier_aclr2                  ("NONE"),
		.multiplier_aclr3                  ("NONE"),
		.preadder_mode                     ("CONSTANT"),
		.preadder_direction_0              ("ADD"),
		.preadder_direction_1              ("ADD"),
		.preadder_direction_2              ("ADD"),
		.preadder_direction_3              ("ADD"),
		.width_c                           (16),
		.input_register_c0                 ("UNREGISTERED"),
		.input_register_c1                 ("UNREGISTERED"),
		.input_register_c2                 ("UNREGISTERED"),
		.input_register_c3                 ("UNREGISTERED"),
		.input_aclr_c0                     ("NONE"),
		.input_aclr_c1                     ("NONE"),
		.input_aclr_c2                     ("NONE"),
		.input_aclr_c3                     ("NONE"),
		.width_coef                        (18),
		.coefsel0_register                 ("CLOCK0"),
		.coefsel1_register                 ("CLOCK0"),
		.coefsel2_register                 ("CLOCK0"),
		.coefsel3_register                 ("CLOCK0"),
		.coefsel0_aclr                     ("NONE"),
		.coefsel1_aclr                     ("NONE"),
		.coefsel2_aclr                     ("NONE"),
		.coefsel3_aclr                     ("NONE"),
		.coef0_0                           (1),
		.coef0_1                           (0),
		.coef0_2                           (0),
		.coef0_3                           (0),
		.coef0_4                           (0),
		.coef0_5                           (0),
		.coef0_6                           (0),
		.coef0_7                           (0),
		.coef1_0                           (0),
		.coef1_1                           (0),
		.coef1_2                           (0),
		.coef1_3                           (0),
		.coef1_4                           (0),
		.coef1_5                           (0),
		.coef1_6                           (0),
		.coef1_7                           (0),
		.coef2_0                           (0),
		.coef2_1                           (0),
		.coef2_2                           (0),
		.coef2_3                           (0),
		.coef2_4                           (0),
		.coef2_5                           (0),
		.coef2_6                           (0),
		.coef2_7                           (0),
		.coef3_0                           (0),
		.coef3_1                           (0),
		.coef3_2                           (0),
		.coef3_3                           (0),
		.coef3_4                           (0),
		.coef3_5                           (0),
		.coef3_6                           (0),
		.coef3_7                           (0),
		.accumulator                       ("NO"),
		.accum_direction                   ("ADD"),
		.use_sload_accum_port              ("NO"),
		.loadconst_value                   (64),
		.accum_sload_register              ("UNREGISTERED"),
		.accum_sload_aclr                  ("NONE"),
		.double_accum                      ("NO"),
		.width_chainin                     (40),
		.chainout_adder                    ("NO"),
		.systolic_delay1                   ("CLOCK0"),
		.systolic_aclr1                    ("NONE"),
		.systolic_delay3                   ("CLOCK0"),
		.systolic_aclr3                    ("NONE"),
		.latency                           (0),
		.input_a0_latency_clock            ("UNREGISTERED"),
		.input_a1_latency_clock            ("UNREGISTERED"),
		.input_a2_latency_clock            ("UNREGISTERED"),
		.input_a3_latency_clock            ("UNREGISTERED"),
		.input_a0_latency_aclr             ("NONE"),
		.input_a1_latency_aclr             ("NONE"),
		.input_a2_latency_aclr             ("NONE"),
		.input_a3_latency_aclr             ("NONE"),
		.input_b0_latency_clock            ("UNREGISTERED"),
		.input_b1_latency_clock            ("UNREGISTERED"),
		.input_b2_latency_clock            ("UNREGISTERED"),
		.input_b3_latency_clock            ("UNREGISTERED"),
		.input_b0_latency_aclr             ("NONE"),
		.input_b1_latency_aclr             ("NONE"),
		.input_b2_latency_aclr             ("NONE"),
		.input_b3_latency_aclr             ("NONE"),
		.input_c0_latency_clock            ("UNREGISTERED"),
		.input_c1_latency_clock            ("UNREGISTERED"),
		.input_c2_latency_clock            ("UNREGISTERED"),
		.input_c3_latency_clock            ("UNREGISTERED"),
		.input_c0_latency_aclr             ("NONE"),
		.input_c1_latency_aclr             ("NONE"),
		.input_c2_latency_aclr             ("NONE"),
		.input_c3_latency_aclr             ("NONE"),
		.coefsel0_latency_clock            ("UNREGISTERED"),
		.coefsel1_latency_clock            ("UNREGISTERED"),
		.coefsel2_latency_clock            ("UNREGISTERED"),
		.coefsel3_latency_clock            ("UNREGISTERED"),
		.coefsel0_latency_aclr             ("NONE"),
		.coefsel1_latency_aclr             ("NONE"),
		.coefsel2_latency_aclr             ("NONE"),
		.coefsel3_latency_aclr             ("NONE"),
		.signed_latency_clock_a            ("UNREGISTERED"),
		.signed_latency_aclr_a             ("NONE"),
		.signed_latency_clock_b            ("UNREGISTERED"),
		.signed_latency_aclr_b             ("NONE"),
		.addnsub_multiplier_latency_clock1 ("UNREGISTERED"),
		.addnsub_multiplier_latency_aclr1  ("NONE"),
		.addnsub_multiplier_latency_clock3 ("UNREGISTERED"),
		.addnsub_multiplier_latency_aclr3  ("NONE"),
		.accum_sload_latency_clock         ("UNREGISTERED"),
		.accum_sload_latency_aclr          ("NONE"),
		.selected_device_family            (selected_device_family)
	) ama_0_inst (
		.result                (result),                                                                               //   result.result
		.dataa                 ({dataa_3[19:0],dataa_2[19:0],dataa_1[19:0],dataa_0[19:0]}),                            //  dataa_0.dataa_0
		.clock0                (clock0),                                                                               //   clock0.clk
		.coefsel0              (coefsel0),                                                                             // coefsel0.coefsel0
		.coefsel1              (coefsel1),                                                                             // coefsel1.coefsel1
		.coefsel2              (coefsel2),                                                                             // coefsel2.coefsel2
		.coefsel3              (coefsel3),                                                                             // coefsel3.coefsel3
		.chainin               (chainin),                                                                              //  chainin.chainin
		.scaninb               (20'b00000000000000000000),                                                             // (terminated)
		.sourcea               (4'b0000),                                                                              // (terminated)
		.sourceb               (4'b0000),                                                                              // (terminated)
		.scanoutb              (),                                                                                     // (terminated)
		.mult01_round          (1'b0),                                                                                 // (terminated)
		.mult23_round          (1'b0),                                                                                 // (terminated)
		.mult01_saturation     (1'b0),                                                                                 // (terminated)
		.mult23_saturation     (1'b0),                                                                                 // (terminated)
		.addnsub1_round        (1'b0),                                                                                 // (terminated)
		.addnsub3_round        (1'b0),                                                                                 // (terminated)
		.mult0_is_saturated    (),                                                                                     // (terminated)
		.mult1_is_saturated    (),                                                                                     // (terminated)
		.mult2_is_saturated    (),                                                                                     // (terminated)
		.mult3_is_saturated    (),                                                                                     // (terminated)
		.output_round          (1'b0),                                                                                 // (terminated)
		.chainout_round        (1'b0),                                                                                 // (terminated)
		.output_saturate       (1'b0),                                                                                 // (terminated)
		.chainout_saturate     (1'b0),                                                                                 // (terminated)
		.chainout_sat_overflow (),                                                                                     // (terminated)
		.zero_chainout         (1'b0),                                                                                 // (terminated)
		.rotate                (1'b0),                                                                                 // (terminated)
		.shift_right           (1'b0),                                                                                 // (terminated)
		.zero_loopback         (1'b0),                                                                                 // (terminated)
		.datab                 (80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated)
		.signa                 (1'b0),                                                                                 // (terminated)
		.signb                 (1'b0),                                                                                 // (terminated)
		.addnsub1              (1'b1),                                                                                 // (terminated)
		.addnsub3              (1'b1),                                                                                 // (terminated)
		.clock1                (1'b1),                                                                                 // (terminated)
		.clock2                (1'b1),                                                                                 // (terminated)
		.clock3                (1'b1),                                                                                 // (terminated)
		.ena0                  (1'b1),                                                                                 // (terminated)
		.ena1                  (1'b1),                                                                                 // (terminated)
		.ena2                  (1'b1),                                                                                 // (terminated)
		.ena3                  (1'b1),                                                                                 // (terminated)
		.aclr0                 (1'b0),                                                                                 // (terminated)
		.aclr1                 (1'b0),                                                                                 // (terminated)
		.aclr2                 (1'b0),                                                                                 // (terminated)
		.aclr3                 (1'b0),                                                                                 // (terminated)
		.scanina               (20'b00000000000000000000),                                                             // (terminated)
		.scanouta              (),                                                                                     // (terminated)
		.datac                 (64'b0000000000000000000000000000000000000000000000000000000000000000),                 // (terminated)
		.accum_sload           (1'b0),                                                                                 // (terminated)
		.sload_accum           (1'b0)                                                                                  // (terminated)
	);

endmodule
// Retrieval info: <?xml version="1.0"?>
//<!--
//	Generated by Altera MegaWizard Launcher Utility version 1.0
//	************************************************************
//	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//	************************************************************
//	Copyright (C) 1991-2016 Altera Corporation
//	Any megafunction design, and related net list (encrypted or decrypted),
//	support information, device programming or simulation file, and any other
//	associated documentation or information provided by Altera or a partner
//	under Altera's Megafunction Partnership Program may be used only to
//	program PLD devices (but not masked PLD devices) from Altera.  Any other
//	use of such megafunction design, net list, support information, device
//	programming or simulation file, or any other related documentation or
//	information is prohibited for any other purpose, including, but not
//	limited to modification, reverse engineering, de-compiling, or use with
//	any other silicon devices, unless such use is explicitly licensed under
//	a separate agreement with Altera or a megafunction partner.  Title to
//	the intellectual property, including patents, copyrights, trademarks,
//	trade secrets, or maskworks, embodied in any such megafunction design,
//	net list, support information, device programming or simulation file, or
//	any other related documentation or information provided by Altera or a
//	megafunction partner, remains with Altera, the megafunction partner, or
//	their respective licensors.  No other licenses, including any licenses
//	needed under any third party's intellectual property, are provided herein.
//-->
// Retrieval info: <instance entity-name="altera_mult_add" version="13.1" >
// Retrieval info: 	<generic name="number_of_multipliers" value="4" />
// Retrieval info: 	<generic name="width_a" value="20" />
// Retrieval info: 	<generic name="width_b" value="20" />
// Retrieval info: 	<generic name="width_result" value="40" />
// Retrieval info: 	<generic name="gui_4th_asynchronous_clear" value="false" />
// Retrieval info: 	<generic name="gui_associated_clock_enable" value="false" />
// Retrieval info: 	<generic name="gui_output_register" value="true" />
// Retrieval info: 	<generic name="gui_output_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_output_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_multiplier1_direction" value="ADD" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_register1" value="false" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_register1_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_aclr1" value="NONE" />
// Retrieval info: 	<generic name="gui_multiplier3_direction" value="ADD" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_register3" value="false" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_register3_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_addnsub_multiplier_aclr3" value="NONE" />
// Retrieval info: 	<generic name="gui_representation_a" value="UNSIGNED" />
// Retrieval info: 	<generic name="gui_register_signa" value="false" />
// Retrieval info: 	<generic name="gui_register_signa_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_register_signa_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_representation_b" value="UNSIGNED" />
// Retrieval info: 	<generic name="gui_register_signb" value="false" />
// Retrieval info: 	<generic name="gui_register_signb_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_register_signb_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_input_register_a" value="true" />
// Retrieval info: 	<generic name="gui_input_register_a_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_input_register_a_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_input_register_b" value="true" />
// Retrieval info: 	<generic name="gui_input_register_b_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_input_register_b_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_multiplier_a_input" value="Multiplier input" />
// Retrieval info: 	<generic name="gui_scanouta_register" value="false" />
// Retrieval info: 	<generic name="gui_scanouta_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_scanouta_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_multiplier_b_input" value="Multiplier input" />
// Retrieval info: 	<generic name="gui_multiplier_register" value="false" />
// Retrieval info: 	<generic name="gui_multiplier_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_multiplier_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="preadder_mode" value="CONSTANT" />
// Retrieval info: 	<generic name="gui_preadder_direction" value="ADD" />
// Retrieval info: 	<generic name="width_c" value="16" />
// Retrieval info: 	<generic name="gui_datac_input_register" value="false" />
// Retrieval info: 	<generic name="gui_datac_input_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_datac_input_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="width_coef" value="18" />
// Retrieval info: 	<generic name="gui_coef_register" value="true" />
// Retrieval info: 	<generic name="gui_coef_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_coef_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="coef0_0" value="1" />
// Retrieval info: 	<generic name="coef0_1" value="0" />
// Retrieval info: 	<generic name="coef0_2" value="0" />
// Retrieval info: 	<generic name="coef0_3" value="0" />
// Retrieval info: 	<generic name="coef0_4" value="0" />
// Retrieval info: 	<generic name="coef0_5" value="0" />
// Retrieval info: 	<generic name="coef0_6" value="0" />
// Retrieval info: 	<generic name="coef0_7" value="0" />
// Retrieval info: 	<generic name="coef1_0" value="0" />
// Retrieval info: 	<generic name="coef1_1" value="0" />
// Retrieval info: 	<generic name="coef1_2" value="0" />
// Retrieval info: 	<generic name="coef1_3" value="0" />
// Retrieval info: 	<generic name="coef1_4" value="0" />
// Retrieval info: 	<generic name="coef1_5" value="0" />
// Retrieval info: 	<generic name="coef1_6" value="0" />
// Retrieval info: 	<generic name="coef1_7" value="0" />
// Retrieval info: 	<generic name="coef2_0" value="0" />
// Retrieval info: 	<generic name="coef2_1" value="0" />
// Retrieval info: 	<generic name="coef2_2" value="0" />
// Retrieval info: 	<generic name="coef2_3" value="0" />
// Retrieval info: 	<generic name="coef2_4" value="0" />
// Retrieval info: 	<generic name="coef2_5" value="0" />
// Retrieval info: 	<generic name="coef2_6" value="0" />
// Retrieval info: 	<generic name="coef2_7" value="0" />
// Retrieval info: 	<generic name="coef3_0" value="0" />
// Retrieval info: 	<generic name="coef3_1" value="0" />
// Retrieval info: 	<generic name="coef3_2" value="0" />
// Retrieval info: 	<generic name="coef3_3" value="0" />
// Retrieval info: 	<generic name="coef3_4" value="0" />
// Retrieval info: 	<generic name="coef3_5" value="0" />
// Retrieval info: 	<generic name="coef3_6" value="0" />
// Retrieval info: 	<generic name="coef3_7" value="0" />
// Retrieval info: 	<generic name="accumulator" value="NO" />
// Retrieval info: 	<generic name="accum_direction" value="ADD" />
// Retrieval info: 	<generic name="gui_ena_preload_const" value="false" />
// Retrieval info: 	<generic name="gui_accumulate_port_select" value="0" />
// Retrieval info: 	<generic name="loadconst_value" value="64" />
// Retrieval info: 	<generic name="gui_accum_sload_register_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_accum_sload_register_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_double_accum" value="false" />
// Retrieval info: 	<generic name="gui_chainout_adder" value="false" />
// Retrieval info: 	<generic name="chainout_adder" value="NO" />
// Retrieval info: 	<generic name="gui_systolic_delay" value="true" />
// Retrieval info: 	<generic name="gui_systolic_delay_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_systolic_delay_aclr" value="NONE" />
// Retrieval info: 	<generic name="gui_pipelining" value="0" />
// Retrieval info: 	<generic name="latency" value="0" />
// Retrieval info: 	<generic name="gui_input_latency_clock" value="CLOCK0" />
// Retrieval info: 	<generic name="gui_input_latency_aclr" value="NONE" />
// Retrieval info: 	<generic name="selected_device_family" value="Cyclone V" />
// Retrieval info: 	<generic name="reg_autovec_sim" value="false" />
// Retrieval info: </instance>
// IPFS_FILES : ama_0.vo
// RELATED_FILES: ama_0.v
