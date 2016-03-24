library verilog;
use verilog.vl_types.all;
entity ama_2 is
    generic(
        selected_device_family: string  := "Cyclone V"
    );
    port(
        result          : out    vl_logic_vector(39 downto 0);
        dataa_0         : in     vl_logic_vector(19 downto 0);
        dataa_1         : in     vl_logic_vector(19 downto 0);
        dataa_2         : in     vl_logic_vector(19 downto 0);
        dataa_3         : in     vl_logic_vector(19 downto 0);
        clock0          : in     vl_logic;
        coefsel0        : in     vl_logic_vector(2 downto 0);
        coefsel1        : in     vl_logic_vector(2 downto 0);
        coefsel2        : in     vl_logic_vector(2 downto 0);
        coefsel3        : in     vl_logic_vector(2 downto 0);
        chainin         : in     vl_logic_vector(39 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of selected_device_family : constant is 1;
end ama_2;
