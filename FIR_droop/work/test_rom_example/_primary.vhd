library verilog;
use verilog.vl_types.all;
entity test_rom_example is
    port(
        rdaddr          : in     vl_logic_vector(12 downto 0);
        adc_val         : out    vl_logic_vector(13 downto 0)
    );
end test_rom_example;
