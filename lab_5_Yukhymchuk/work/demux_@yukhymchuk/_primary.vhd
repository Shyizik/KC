library verilog;
use verilog.vl_types.all;
entity demux_Yukhymchuk is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        Q0              : out    vl_logic_vector(3 downto 0);
        Q1              : out    vl_logic_vector(3 downto 0);
        Q2              : out    vl_logic_vector(3 downto 0);
        Q3              : out    vl_logic_vector(3 downto 0);
        Q4              : out    vl_logic_vector(3 downto 0)
    );
end demux_Yukhymchuk;
