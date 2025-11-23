entity decoder_7seg is 
    port(
        into : in bit;
        s0,s1,s2,s3,s4,s5,s6 : out bit
    ); 
end entity;

architecture behav of decoder_7seg is 
begin 
    s0 <= not into; 
    s1 <= '1';
    s2 <= '1'; 
    s3 <= not into;
    s4 <= not into;
    s5 <= not into;
    s6 <= '0'; 

end architecture behav; 