entity mux_4x1_24bit is 
    port(
        reg_1      : in bit_vector(23 downto 0);
        reg_2      : in bit_vector(23 downto 0);
        rom_in     : in bit_vector(23 downto 0); 
        select_sum : in bit_vector(1 downto 0);
        d1         : out bit_vector(23 downto 0)
    );
end mux_4x1_24bit;

architecture behav of mux_4x1_24bit is 
begin 

    d1(0) <= (reg_1(0) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(0) and not select_sum(1) and  select_sum(0)) or
             (rom_in(0) and select_sum(1) and not select_sum(0));

    d1(1) <= (reg_1(1) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(1) and not select_sum(1) and  select_sum(0)) or
             (rom_in(1) and select_sum(1) and not select_sum(0));

    d1(2) <= (reg_1(2) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(2) and not select_sum(1) and  select_sum(0)) or
             (rom_in(2) and select_sum(1) and not select_sum(0));

    d1(3) <= (reg_1(3) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(3) and not select_sum(1) and  select_sum(0)) or
             (rom_in(3) and select_sum(1) and not select_sum(0));

    d1(4) <= (reg_1(4) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(4) and not select_sum(1) and  select_sum(0)) or
             (rom_in(4) and select_sum(1) and not select_sum(0));

    d1(5) <= (reg_1(5) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(5) and not select_sum(1) and  select_sum(0)) or
             (rom_in(5) and select_sum(1) and not select_sum(0));

    d1(6) <= (reg_1(6) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(6) and not select_sum(1) and  select_sum(0)) or
             (rom_in(6) and select_sum(1) and not select_sum(0));

    d1(7) <= (reg_1(7) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(7) and not select_sum(1) and  select_sum(0)) or
             (rom_in(7) and select_sum(1) and not select_sum(0));

    d1(8) <= (reg_1(8) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(8) and not select_sum(1) and  select_sum(0)) or
             (rom_in(8) and select_sum(1) and not select_sum(0));

    d1(9) <= (reg_1(9) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(9) and not select_sum(1) and  select_sum(0)) or
             (rom_in(9) and select_sum(1) and not select_sum(0));

    d1(10) <= (reg_1(10) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(10) and not select_sum(1) and  select_sum(0)) or
             (rom_in(10) and select_sum(1) and not select_sum(0));

    d1(11) <= (reg_1(11) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(11) and not select_sum(1) and  select_sum(0)) or
             (rom_in(11) and select_sum(1) and not select_sum(0));

    d1(12) <= (reg_1(12) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(12) and not select_sum(1) and  select_sum(0)) or
             (rom_in(12) and select_sum(1) and not select_sum(0));

    d1(13) <= (reg_1(13) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(13) and not select_sum(1) and  select_sum(0)) or
             (rom_in(13) and select_sum(1) and not select_sum(0));

    d1(14) <= (reg_1(14) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(14) and not select_sum(1) and  select_sum(0)) or
             (rom_in(14) and select_sum(1) and not select_sum(0));

    d1(15) <= (reg_1(15) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(15) and not select_sum(1) and  select_sum(0)) or
             (rom_in(15) and select_sum(1) and not select_sum(0));

    d1(16) <= (reg_1(16) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(16) and not select_sum(1) and  select_sum(0)) or
             (rom_in(16) and select_sum(1) and not select_sum(0));

    d1(17) <= (reg_1(17) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(17) and not select_sum(1) and  select_sum(0)) or
             (rom_in(17) and select_sum(1) and not select_sum(0));

    d1(18) <= (reg_1(18) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(18) and not select_sum(1) and  select_sum(0)) or
             (rom_in(18) and select_sum(1) and not select_sum(0));

    d1(19) <= (reg_1(19) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(19) and not select_sum(1) and  select_sum(0)) or
             (rom_in(19) and select_sum(1) and not select_sum(0));

    d1(20) <= (reg_1(20) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(20) and not select_sum(1) and  select_sum(0)) or
             (rom_in(20) and select_sum(1) and not select_sum(0));

    d1(21) <= (reg_1(21) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(21) and not select_sum(1) and  select_sum(0)) or
             (rom_in(21) and select_sum(1) and not select_sum(0));

    d1(22) <= (reg_1(22) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(22) and not select_sum(1) and  select_sum(0)) or
             (rom_in(22) and select_sum(1) and not select_sum(0));

    d1(23) <= (reg_1(23) and not select_sum(1) and not select_sum(0)) or 
             (reg_2(23) and not select_sum(1) and  select_sum(0)) or
             (rom_in(23) and select_sum(1) and not select_sum(0));

end architecture behav;