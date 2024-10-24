-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's CTLs are dependent only on the current state.
-- The CTL is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sm is
	port(
		CLK		 : in	std_logic;
		RD	: in	std_logic_vector(3 downto 0);
        OP, FUNCT3  : in std_logic_vector(2 downto 0);
        RS1, RS2 : in std_logic_vector(1 downto 0);
        FZ : in std_logic;
		RST	 : in	std_logic;
		CTL	 : out	std_logic_vector(24 downto 0));
end entity;

architecture rtl of sm is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14);

	-- Register to hold the current state
	signal state   : state_type;

begin
	-- Logic to advance to the next state
	process (CLK, RST, OP, FUNCT3, FZ)
	begin
		if RST = '1' then
			state <= s0;
		elsif (rising_edge(CLK)) then
			case state is
				when s0=>
					state <= s1;
				when s1=>
					if OP = "100" then
						state <= s12;
					else
						state <= s2;
					end if;
				when s2=>
					if OP = "000" or OP = "011" then
						state <= s3;
					else
						state <= s5;
					end if;
				when s3 =>
					if OP = "000" then
						state <= s4;
					else
						state <= s9;
					end if;
                when s4 =>
					state <= s0;
                when s5 =>
					if OP = "001" and FUNCT3 = "001" then
						state <= s4;
					elsif (OP = "001" and FUNCT3 = "000") or OP = "010" then
						state <= s6;
                    else
                        state <= s11;
					end if;
                when s6 =>
					if OP = "001" then
						state <= s7;
					else
						state <= s8;
					end if;
                when s7 =>
					state <= s0;
                when s8 =>
					state <= s0;
                when s9 =>
					if FUNCT3 = "000" then
						if FZ = '0' then
                            state <= s10;
                        else
                            state <= s14;
                        end if;
					else
                        if FZ = '1' then
                            state <= s10;
                        else
                            state <= s14;
                        end if;
					end if;
                when s10 =>
                    state <= s5;
                when s11 =>
                    state <= s0;
                when s12 =>
                    state <= s13;
                when s13 =>
                    state <= s5;
                when s14 =>
                    state <= s0;
			end case;
		end if;
	end process;

	-- CTL depends solely on the current state
	process (state, RS1, RS2, RD)
	begin
		case state is
			when s0 =>
				CTL <= "0000000000000000100000100";
			when s1 =>
				CTL <= "0000000000000000001000010";
			when s2 =>
				CTL <= "0000" & RS1 & "1010000000000000000";
			when s3 =>
				CTL <= "0000" & RS2 & "1100000000000000000";
            when s4 =>
                CTL <= RD & "000001001001000010000";
            when s5 =>
                CTL <= "0000000100000000000000001";
            when s6 =>
                CTL <= "0000000001001001100000000";
            when s7 =>
                CTL <= RD & "000000000000001010000";
            when s8 =>
                CTL <= "0000" & RS2 & "1000000000010010000";
            when s9 =>
                CTL <= "0000000000110000000000000";
            when s10 =>
                CTL <= "0000000010000000000000100";
            when s11 =>
                CTL <= "0000000001001001000110000";
            when s12 =>
                CTL <= "0000000010000000000010100";
            when s13 =>
                CTL <= RD & "000000000000000000100";
            when s14 =>
                CTL <= "0000000000000000000010000";
		end case;
	end process;
end rtl;