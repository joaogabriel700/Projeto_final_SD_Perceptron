entity register_32 is
   port (
        clk : in bit;
        rst : in bit;
        load : in bit;
        D :  in bit_vector (31 downto 0);
        Q : out bit_vector (31 downto 0)
    );
end register_32;

architecture behav of register_32 is
begin 
    process(clk, rst)
    begin 
        if(rst = '1') then 
            Q <=(others => '0'); 

        elsif(clk'event AND clk = '1')then
            if(load='1')then
                Q <= D;
            end if;
        end if;
    end process; 
end architecture behav;