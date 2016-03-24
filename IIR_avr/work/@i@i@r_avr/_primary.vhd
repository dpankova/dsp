library verilog;
use verilog.vl_types.all;
entity IIR_avr is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        adc             : in     vl_logic_vector(13 downto 0);
        avr_whole_out   : out    vl_logic_vector(40 downto 0);
        avr_frac_out    : out    vl_logic_vector(40 downto 0)
    );
end IIR_avr;
