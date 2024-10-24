library ieee;
use ieee.std_logic_1164.all;

entity dff1 is
    port (
        clk : in std_logic;
        d : in STD_LOGIC_VECTOR(15 downto 0);
        q : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity dff1;

architecture bhv of dff1 is
    signal q1 : std_logic_vector(15 downto 0); --类似于在芯片内部定义一个数据的暂存节点
begin
    process (clk,q1)
    begin
        if clk'EVENT AND clk = '1'
        then
            q1 <= d;
        end if;
    end process;
    q <= q1; --将内部的暂存数据向端口输出（双横线--是注释符号）
end architecture bhv;