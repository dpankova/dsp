//----------------------------------------------------
// Daria Pankova Tue Feb 16 15:45:00 EST 2016
// FIR_avr.v
// FIR average of last ten values using lpm_mult
//-----------------------------------------------------

module FIR_avr
  (
   input 	 clk, // clock
   input 	 rst_n, // reset
   input [13:0]  adc,
   output [24:0] avr_whole_out,
   output [14:0] avr_frac_out
   );

   // parameters
   localparam [3:0] N = 4'd12;
   
   // variables
   wire [39:0] 	result_0;
   wire [39:0] 	result_1;
   wire [39:0] 	result_2;
   reg [19:0] dataa_0;
   reg [19:0] dataa_1;
   reg [19:0] dataa_2;
   reg [19:0] dataa_3;
   reg [2:0]  coefsel0;
   reg [2:0]  coefsel1;
   reg [2:0]  coefsel2;
   reg [2:0]  coefsel3;
   reg [39:0] chainin_0;
   reg [39:0] chainin_1;
   reg [39:0] chainin_2;

   reg [24:0] avr_whole;
   reg [14:0] avr_frac;
   
   
   // Altera_mult_add init
   ama_0 ama_inst_0 (
		     .result ( result_0 ), 
		     .dataa_0 ( {6'b0, adc} ),
		     .dataa_1 ( {6'b0, adc} ),
		     .dataa_2 ( {6'b0, adc} ), 
         	     .dataa_3 ( {6'b0, adc} ), 
        	     .clock0 ( clk ), 
	             .coefsel0 ( 3'b0 ), 
		     .coefsel1 ( 3'b0 ),
        	     .coefsel2 ( 3'b0 ),
		     .coefsel3 ( 3'b0 ),
         	     .chainin ( 40'b0 )  
		     );
   ama_1 ama_inst_1 (
		     .result ( result_1 ), 
		     .dataa_0 ( {6'b0, adc} ),
		     .dataa_1 ( {6'b0, adc} ),
		     .dataa_2 ( {6'b0, adc} ), 
         	     .dataa_3 ( {6'b0, adc} ), 
        	     .clock0 ( clk ), 
	             .coefsel0 ( 3'b0 ), 
		     .coefsel1 ( 3'b0 ),
        	     .coefsel2 ( 3'b0 ),
		     .coefsel3 ( 3'b0 ),
         	     .chainin ( result_0 )  
		     );
   ama_2 ama_inst_2 (
		     .result ( result_2 ), 
		     .dataa_0 ( {6'b0, adc} ),
		     .dataa_1 ( {6'b0, adc} ),
		     .dataa_2 ( {6'b0, adc} ), 
         	     .dataa_3 ( {6'b0, adc} ), 
        	     .clock0 ( clk ), 
	             .coefsel0 ( 3'b0 ), 
		     .coefsel1 ( 3'b0 ),
        	     .coefsel2 ( 3'b0 ),
		     .coefsel3 ( 3'b0 ),
         	     .chainin ( result_1 )
		     );

   always @(posedge clk or negedge rst_n)
     begin
	avr_whole[24:0] <= result_2[39:15];
	avr_frac[14:0] <= result_2[14:0];
     end

   assign avr_whole_out = avr_whole;
   assign avr_frac_out = avr_frac;
   
endmodule
