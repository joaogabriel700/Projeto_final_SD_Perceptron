entity rom_3x16 is 
    port(
        adress   : in bit_vector(1 downto 0);  
        dado_out : out bit_vector(15 downto 0) 
    );
end rom_3x16;

architecture behav of rom_3x16 is 
begin 
    with adress select
    dado_out <= "0011000111011011" when "00",
                "0011000111111001" when "01",
                "0000000000000000" when "10",
                "0000000000000000" when others; 
end architecture behav; 