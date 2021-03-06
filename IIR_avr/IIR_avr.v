//----------------------------------------------------
// Daria Pankova Tue Feb 16 15:45:00 EST 2016
// FIR_avr.v
// FIR average of last ten values using lpm_mult
//-----------------------------------------------------

module IIR_avr
  (
   input 	clk, // clock
   input 	rst_n, // reset
   input [13:0] adc,
   output [40:0] avr_whole_out,
   output [40:0] avr_frac_out
   );

   // parameters
   localparam [3:0] N = 4'd12;
   localparam [11:0] A = 12'd2831;
   
   // variables
   reg [3:0] 	counter;
   wire [3:0] 	counter_next;
   reg [40:0] 	sum;
   reg [40:0] 	avr_whole;
   reg [40:0] 	avr_frac;	
   wire [40:0] 	mult;
   wire [40:0] 	mult_whole;
   wire [40:0] 	mult_frac;   
   reg [40:0] 	sum_frac;
   reg [40:0] 	sum_whole;
   wire [40:0] 	sum_next;
   wire [40:0] 	sum_next_whole;
   wire [40:0] 	sum_next_frac;
   wire [40:0] 	avr_next_whole;
   wire [40:0] 	avr_next_frac;
   wire [40:0] 	avr_next_whole_temp;
   wire [40:0] 	avr_next_frac_temp;  
   
   always @(posedge clk or negedge rst_n)
     begin
	if (!rst_n) // Pulse reset
	  begin
	     counter <= 4'b0;
	     sum <= 41'b0;
	     avr_frac <= 41'b0;
	     avr_whole <= 41'b0;
	     sum_frac <= 41'b0;
	     sum_whole <= 41'b0;
	  end
	else
	  begin
	     if ( counter < N )
	       begin
		  sum <= sum_next;
		  counter <= counter_next;
	       end
	     else
	       begin
		  sum_whole <= sum_next_whole;
		  sum_frac <= sum_next_frac;
		  avr_whole <= avr_next_whole;
		  avr_frac <= avr_next_frac;
	       end
	 
	  end // else: !if(!rst_n)
     end // always @ (posedge clk or negedge rst_n)

   assign counter_next = counter + 4'b1;
   assign sum_next = sum + {26'b0, adc};
   assign mult = A*sum;
   assign mult_whole = A*sum_next_whole;
   assign mult_frac = A*sum_next_frac;
   assign sum_next_whole = sum + {28'b0, adc} - (mult >> 15) - 40'b1;
   assign sum_next_frac = {26'b1, 15'b0} - {26'b0, mult[14:0]};
   assign avr_next_whole_temp = (mult_whole >> 15);
   assign avr_next_frac_temp = {26'b0, mult_whole[14:0]} + (mult_frac >> 15);
   assign avr_next_whole = avr_next_whole_temp + (avr_next_frac_temp >> 15);
   assign avr_next_frac =  avr_next_frac_temp[14:0];
   assign avr_whole_out = avr_whole;
   assign avr_frac_out =  avr_frac;
   
endmodule // IIR_avr


 /* wire [89:0] 	result_0;
   reg [44:0] dataa_0;
   reg [2:0]  coefsel0;
   reg [2:0]  coefsel3;
   reg [89:0] chainin_0;
   reg [13:0] adc_1;
   reg [13:0] adc_2;
   reg [13:0] adc_3;*/

  // Altera_mult_add init
 /*  ama_0 ama_inst_0 (
		     .result ( result_0 ), 
		     .dataa_0 ( dataa_0 ),
        	     .clock0 ( clk ), 
	             .coefsel0 ( 3'b0 )
		     );*/

   /* adc_1 <= adc;
	     adc_2 <= adc_1;
	     adc_3 <= adc_2;
	     
	  //   bavr_whole_old <= bavr_whole;
	     if ( counter < 4'd3 )
	       begin
		  dataa_0 <= {26'b0, adc};
		  counter <= counter_next;
	       end
	     else if ( counter < 4'd12 ) 
	       begin
		  dataa_0 <= {26'b0, adc};
		  counter <= counter_next;
		  bavr <= bavr_next;
	       end
	     else if ( counter < 4'd15 ) 
	       begin
		  counter <= counter_next;
		  dataa_0 <= bavr[59:15] - {31'b0, adc};  
		  bavr <= bavr_next;
	       end
	     else 
	       begin
		  dataa_0 <= bavr[59:15] - {31'b0, adc};  
		  bavr <= bavr_whole_next;
	       end*/
