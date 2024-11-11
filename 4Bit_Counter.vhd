library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity BinaryCounter_4Bit_Asynchronous is
    Port ( clock,CLR : in STD_LOGIC;
           period : integer; 
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end BinaryCounter_4Bit_Asynchronous;

architecture Behavioral of BinaryCounter_4Bit_Asynchronous is
signal tmp : unsigned (3 downto 0);

begin
process(clock,CLR)
begin
    if (CLR = '1') then
        tmp<="0000";
    elsif (rising_edge(clock)) then 
    tmp<=tmp +1;
    end if;
end process;
Q <= std_logic_vector(tmp) ;
end Behavioral;
