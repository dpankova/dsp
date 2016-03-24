library verilog;
use verilog.vl_types.all;
entity ama_0 is
    generic(
        selected_device_family: string  := "Cyclone V"
    );
    port(
        result          : out    vl_logic_vector(89 downto 0);
        dataa_0         : in     vl_logic_vector(44 downto 0);
        clock0          : in     vl_logic;
        coefsel0        : in     vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of selected_device_family : constant is 1;
end ama_0;
