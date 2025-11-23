entity corretor_sinal is
    port(
        entrada : in bit_vector(23 downto 0);
        comp : in bit;
        saida : out bit_vector( 23 downto 0)
    );
    end corretor_sinal;

architecture behav of corretor_sinal is

component somador is 
    port(
        a, b, ci: in bit;
		  co, s: out bit
    );
end component;

signal invert : bit_vector(23 downto 0);
signal c : bit_vector(24 downto 0); 

begin 
   
    invert(0) <= entrada(0) xor comp;
    
    invert(1) <= entrada(1) xor comp;
    
    invert(2) <= entrada(2) xor comp;
    
    invert(3) <= entrada(3) xor comp;
    
    invert(4) <= entrada(4) xor comp;
    
    invert(5) <= entrada(5) xor comp;
    
    invert(6) <= entrada(6) xor comp;
    
    invert(7) <= entrada(7) xor comp;
    
    invert(8) <= entrada(8) xor comp;
    
    invert(9) <= entrada(9) xor comp;
    
    invert(10) <= entrada(10) xor comp;
    
    invert(11) <= entrada(11) xor comp;
    
    invert(12) <= entrada(12) xor comp;
    
    invert(13) <= entrada(13) xor comp;
    
    invert(14) <= entrada(14) xor comp;
    
    invert(15) <= entrada(15) xor comp;
    
    invert(16) <= entrada(16) xor comp;
    
    invert(17) <= entrada(17) xor comp;
    
    invert(18) <= entrada(18) xor comp;
    
    invert(19) <= entrada(19) xor comp;
    
    invert(20) <= entrada(20) xor comp;
    
    invert(21) <= entrada(21) xor comp;
    
    invert(22) <= entrada(22) xor comp;
    
    invert(23) <=entrada(23) xor comp;

    c(0) <= comp;

    u0: somador port map(a=> invert(0), b=> '0', ci => c(0), s=> saida(0), co => c(1)); 
    
    u1: somador port map(a=> invert(1), b=> '0',ci => c(1), s=> saida(1), co => c(2)); 
    
    u2: somador port map(a=> invert(2), b=> '0',ci => c(2), s=> saida(2), co => c(3)); 
    
    u3: somador port map(a=> invert(3), b=> '0',ci => c(3), s=> saida(3), co => c(4)); 
    
    u4: somador port map(a=> invert(4), b=> '0',ci => c(4), s=> saida(4), co => c(5)); 
    
    u5: somador port map(a=> invert(5), b=> '0',ci => c(5), s=> saida(5), co => c(6)); 
    
    u6: somador port map(a=> invert(6), b=> '0',ci => c(6), s=> saida(6), co => c(7)); 
    
    u7: somador port map(a=> invert(7), b=> '0',ci => c(7), s=> saida(7), co => c(8)); 
    
    u8: somador port map(a=> invert(8), b=> '0',ci => c(8), s=> saida(8), co => c(9)); 
    
    u9: somador port map(a=> invert(9), b=> '0',ci => c(9), s=> saida(9), co => c(10)); 
    
    u10: somador port map(a=> invert(10), b=> '0',ci => c(10), s=> saida(10), co => c(11)); 
    
    u11: somador port map(a=> invert(11), b=> '0',ci => c(11), s=> saida(11), co => c(12)); 
    
    u12: somador port map(a=> invert(12), b=> '0',ci => c(12), s=> saida(12), co => c(13)); 
    
    u13: somador port map(a=> invert(13), b=> '0',ci => c(13), s=> saida(13), co => c(14)); 
    
    u14: somador port map(a=> invert(14), b=> '0',ci => c(14), s=> saida(14), co => c(15)); 
    
    u15: somador port map(a=> invert(15), b=> '0',ci => c(15), s=> saida(15), co => c(16)); 
    
    u16: somador port map(a=> invert(16), b=> '0',ci => c(16), s=> saida(16), co => c(17)); 
    
    u17: somador port map(a=> invert(17), b=> '0',ci => c(17), s=> saida(17), co => c(18)); 
    
    u18: somador port map(a=> invert(18), b=> '0',ci => c(18), s=> saida(18), co => c(19)); 
    
    u19: somador port map(a=> invert(19), b=> '0',ci => c(19), s=> saida(19), co => c(20)); 
    
    u20: somador port map(a=> invert(20), b=> '0',ci => c(20), s=> saida(20), co => c(21)); 
    
    u21: somador port map(a=> invert(21), b=> '0',ci => c(21), s=> saida(21), co => c(22)); 
    
    u22: somador port map(a=> invert(22), b=> '0',ci => c(22), s=> saida(22), co => c(23)); 
    
    u23: somador port map(a=> invert(23), b=> '0',ci => c(23), s=> saida(23), co => c(24)); 

end architecture behav; 