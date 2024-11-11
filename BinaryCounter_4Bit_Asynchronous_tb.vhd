library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BinaryCounter_4Bit_Asynchronous_tb is
end BinaryCounter_4Bit_Asynchronous_tb;

architecture Behavioral of BinaryCounter_4Bit_Asynchronous_tb is
    -- Component declaration for the Unit Under Test (UUT)
    component BinaryCounter_4Bit_Asynchronous is
        Port ( 
            clock : in STD_LOGIC;
            CLR   : in STD_LOGIC;
            period : integer;  
            Q     : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Signals to drive the inputs and capture the output
    signal clock : STD_LOGIC := '0';
    signal CLR   : STD_LOGIC := '0';
    signal period : integer:=3 ; 
    signal Q     : STD_LOGIC_VECTOR (3 downto 0);
   
    

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: BinaryCounter_4Bit_Asynchronous
        port map (
            clock => clock,
            CLR => CLR,
            period => period ,
            Q => Q
        );

    -- Clock generation process
    clock_process : process
    begin
        clock <= '1';
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
    end process;
    


process
     variable period_check : integer := 0;
begin
    for i in 1 to period loop
        clr<='1' ; -- to reset
        wait for  20 ns;
        clr <='0';
        wait for 300 ns;
        period_check := period_check + 1 ;
     end loop;
     clr<='1';
--    clr<='1' ; -- to reset
--    wait for  20 ns;
--    clr <='0';
--    wait for 300 ns;
--    clr<='1' ; -- to reset
--    wait for  20 ns;
--    clr <='0';
--    wait for 300 ns;
--    clr<='1' ;
wait ;
end process ;    


end Behavioral;
