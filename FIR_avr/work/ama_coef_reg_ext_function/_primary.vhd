library verilog;
use verilog.vl_types.all;
entity ama_coef_reg_ext_function is
    generic(
        width_coef      : integer := 1;
        width_data_out  : vl_notype;
        register_clock_0: string  := "UNREGISTERED";
        register_aclr_0 : string  := "NONE";
        register_clock_1: string  := "UNREGISTERED";
        register_aclr_1 : string  := "NONE";
        register_clock_2: string  := "UNREGISTERED";
        register_aclr_2 : string  := "NONE";
        register_clock_3: string  := "UNREGISTERED";
        register_aclr_3 : string  := "NONE";
        number_of_multipliers: integer := 1;
        port_sign       : string  := "PORT_UNUSED";
        latency         : integer := 0;
        latency_clock_0 : string  := "UNREGISTERED";
        latency_aclr_0  : string  := "NONE";
        latency_clock_1 : string  := "UNREGISTERED";
        latency_aclr_1  : string  := "NONE";
        latency_clock_2 : string  := "UNREGISTERED";
        latency_aclr_2  : string  := "NONE";
        latency_clock_3 : string  := "UNREGISTERED";
        latency_aclr_3  : string  := "NONE";
        width_coef_msb  : vl_notype;
        width_data_out_msb: vl_notype;
        width_coef_ext  : vl_notype;
        coef0_0         : vl_logic_vector;
        coef0_1         : vl_logic_vector;
        coef0_2         : vl_logic_vector;
        coef0_3         : vl_logic_vector;
        coef0_4         : vl_logic_vector;
        coef0_5         : vl_logic_vector;
        coef0_6         : vl_logic_vector;
        coef0_7         : vl_logic_vector;
        coef1_0         : vl_logic_vector;
        coef1_1         : vl_logic_vector;
        coef1_2         : vl_logic_vector;
        coef1_3         : vl_logic_vector;
        coef1_4         : vl_logic_vector;
        coef1_5         : vl_logic_vector;
        coef1_6         : vl_logic_vector;
        coef1_7         : vl_logic_vector;
        coef2_0         : vl_logic_vector;
        coef2_1         : vl_logic_vector;
        coef2_2         : vl_logic_vector;
        coef2_3         : vl_logic_vector;
        coef2_4         : vl_logic_vector;
        coef2_5         : vl_logic_vector;
        coef2_6         : vl_logic_vector;
        coef2_7         : vl_logic_vector;
        coef3_0         : vl_logic_vector;
        coef3_1         : vl_logic_vector;
        coef3_2         : vl_logic_vector;
        coef3_3         : vl_logic_vector;
        coef3_4         : vl_logic_vector;
        coef3_5         : vl_logic_vector;
        coef3_6         : vl_logic_vector;
        coef3_7         : vl_logic_vector
    );
    port(
        clock           : in     vl_logic_vector(3 downto 0);
        aclr            : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic_vector(3 downto 0);
        sign            : in     vl_logic;
        coefsel0        : in     vl_logic_vector(2 downto 0);
        coefsel1        : in     vl_logic_vector(2 downto 0);
        coefsel2        : in     vl_logic_vector(2 downto 0);
        coefsel3        : in     vl_logic_vector(2 downto 0);
        data_out_0      : out    vl_logic_vector;
        data_out_1      : out    vl_logic_vector;
        data_out_2      : out    vl_logic_vector;
        data_out_3      : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_coef : constant is 1;
    attribute mti_svvh_generic_type of width_data_out : constant is 3;
    attribute mti_svvh_generic_type of register_clock_0 : constant is 1;
    attribute mti_svvh_generic_type of register_aclr_0 : constant is 1;
    attribute mti_svvh_generic_type of register_clock_1 : constant is 1;
    attribute mti_svvh_generic_type of register_aclr_1 : constant is 1;
    attribute mti_svvh_generic_type of register_clock_2 : constant is 1;
    attribute mti_svvh_generic_type of register_aclr_2 : constant is 1;
    attribute mti_svvh_generic_type of register_clock_3 : constant is 1;
    attribute mti_svvh_generic_type of register_aclr_3 : constant is 1;
    attribute mti_svvh_generic_type of number_of_multipliers : constant is 1;
    attribute mti_svvh_generic_type of port_sign : constant is 1;
    attribute mti_svvh_generic_type of latency : constant is 1;
    attribute mti_svvh_generic_type of latency_clock_0 : constant is 1;
    attribute mti_svvh_generic_type of latency_aclr_0 : constant is 1;
    attribute mti_svvh_generic_type of latency_clock_1 : constant is 1;
    attribute mti_svvh_generic_type of latency_aclr_1 : constant is 1;
    attribute mti_svvh_generic_type of latency_clock_2 : constant is 1;
    attribute mti_svvh_generic_type of latency_aclr_2 : constant is 1;
    attribute mti_svvh_generic_type of latency_clock_3 : constant is 1;
    attribute mti_svvh_generic_type of latency_aclr_3 : constant is 1;
    attribute mti_svvh_generic_type of width_coef_msb : constant is 3;
    attribute mti_svvh_generic_type of width_data_out_msb : constant is 3;
    attribute mti_svvh_generic_type of width_coef_ext : constant is 3;
    attribute mti_svvh_generic_type of coef0_0 : constant is 4;
    attribute mti_svvh_generic_type of coef0_1 : constant is 4;
    attribute mti_svvh_generic_type of coef0_2 : constant is 4;
    attribute mti_svvh_generic_type of coef0_3 : constant is 4;
    attribute mti_svvh_generic_type of coef0_4 : constant is 4;
    attribute mti_svvh_generic_type of coef0_5 : constant is 4;
    attribute mti_svvh_generic_type of coef0_6 : constant is 4;
    attribute mti_svvh_generic_type of coef0_7 : constant is 4;
    attribute mti_svvh_generic_type of coef1_0 : constant is 4;
    attribute mti_svvh_generic_type of coef1_1 : constant is 4;
    attribute mti_svvh_generic_type of coef1_2 : constant is 4;
    attribute mti_svvh_generic_type of coef1_3 : constant is 4;
    attribute mti_svvh_generic_type of coef1_4 : constant is 4;
    attribute mti_svvh_generic_type of coef1_5 : constant is 4;
    attribute mti_svvh_generic_type of coef1_6 : constant is 4;
    attribute mti_svvh_generic_type of coef1_7 : constant is 4;
    attribute mti_svvh_generic_type of coef2_0 : constant is 4;
    attribute mti_svvh_generic_type of coef2_1 : constant is 4;
    attribute mti_svvh_generic_type of coef2_2 : constant is 4;
    attribute mti_svvh_generic_type of coef2_3 : constant is 4;
    attribute mti_svvh_generic_type of coef2_4 : constant is 4;
    attribute mti_svvh_generic_type of coef2_5 : constant is 4;
    attribute mti_svvh_generic_type of coef2_6 : constant is 4;
    attribute mti_svvh_generic_type of coef2_7 : constant is 4;
    attribute mti_svvh_generic_type of coef3_0 : constant is 4;
    attribute mti_svvh_generic_type of coef3_1 : constant is 4;
    attribute mti_svvh_generic_type of coef3_2 : constant is 4;
    attribute mti_svvh_generic_type of coef3_3 : constant is 4;
    attribute mti_svvh_generic_type of coef3_4 : constant is 4;
    attribute mti_svvh_generic_type of coef3_5 : constant is 4;
    attribute mti_svvh_generic_type of coef3_6 : constant is 4;
    attribute mti_svvh_generic_type of coef3_7 : constant is 4;
end ama_coef_reg_ext_function;
