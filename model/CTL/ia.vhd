LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ia IS
    PORT (
        CLK: IN STD_LOGIC; --时钟信号
        I: IN STD_LOGIC_VECTOR(15 DOWNTO 0); --16位输入信号，表示指令
        
        RD: OUT STD_LOGIC_VECTOR(3 DOWNTO 0); --4位输出信号，表示所选寄存器3210
        RS1, RS2: OUT STD_LOGIC_VECTOR(1 DOWNTO 0); --2位输出信号
        OP: OUT STD_LOGIC_VECTOR(2 DOWNTO 0); --3位输出信号，表示操作码
        FUNCT3: OUT STD_LOGIC_VECTOR(2 DOWNTO 0); --3位输出信号，表示功能选择
        IMM: OUT STD_LOGIC_VECTOR(15 DOWNTO 0) --16位输出信号，表示立即数
    );
END ia;

ARCHITECTURE behav OF ia IS
    FUNCTION decode24(x : IN STD_LOGIC_VECTOR(1 DOWNTO 0)) RETURN STD_LOGIC_VECTOR IS --返回值不写长度
    BEGIN
        CASE x IS
            WHEN "00" => RETURN "0001";
            WHEN "01" => RETURN "0010";
            WHEN "10" => RETURN "0100";
            WHEN "11" => RETURN "1000";
        END CASE;
    END FUNCTION decode24;

    SIGNAL opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);

    BEGIN
        opcode <= I(2 DOWNTO 0);

    PROCESS(CLK, I, opcode)
    BEGIN
        IF CLK = '1'
        THEN
            CASE opcode IS
                WHEN "000" => --R型指令，只有ADD
                    RD <= decode24(I(4 DOWNTO 3));
                    RS1 <= I(9 DOWNTO 8);
                    RS2 <= I(11 DOWNTO 10);
                WHEN "001" => --I型指令，只有ADDI,LH
                    RD <= decode24(I(4 DOWNTO 3));
                    FUNCT3 <= I(7 DOWNTO 5);
                    RS1 <= I(9 DOWNTO 8);
                    IF I(15) = '0' THEN IMM <= "0000000000" & I(15 DOWNTO 10); ELSE IMM <= "1111111111" & I(15 DOWNTO 10); END IF;
                WHEN "010" => --S型指令，只有SH
                    RS1 <= I(9 DOWNTO 8);
                    RS2 <= I(11 DOWNTO 10);
                    IF I(15) = '0' THEN IMM <= "0000000000" & I(15 DOWNTO 12) & I(4 DOWNTO 3); ELSE IMM <= "1111111111" & I(15 DOWNTO 12) & I(4 DOWNTO 3); END IF;
                WHEN "011" => --B型指令，只有BNE,BEQ
                    FUNCT3 <= I(7 DOWNTO 5);
                    RS1 <= I(9 DOWNTO 8);
                    RS2 <= I(11 DOWNTO 10);
                    IF I(15) = '0' THEN IMM <= "0000000000" & I(15 DOWNTO 12) & I(4 DOWNTO 3); ELSE IMM <= "1111111111" & I(15 DOWNTO 12) & I(4 DOWNTO 3); END IF;
                WHEN "100" => --J型指令，只有JAL
                    RD <= decode24(I(4 DOWNTO 3));
                    IF I(15) = '0' THEN IMM <= "00000" & I(15 DOWNTO 5); ELSE IMM <= "11111" & I(15 DOWNTO 5); END IF;
                WHEN OTHERS => NULL;
            END CASE;
        END IF;
        OP <= opcode;
    END PROCESS;

END behav;