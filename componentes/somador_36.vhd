entity somador_36 is 
    port(
        A : in bit_vector (35 downto 0);
        B : in bit_vector (35 downto 0);
        S : out bit_vector(35 downto 0)
    );
end somador_36;

architecture behav of somador_36 is 
component somador is 
    port(
        a,b,ci : in bit;
        co, s : out bit
    );
end component;

signal c : bit_vector (36 downto 0); 

begin

    c(0) <=  '0';

    U0: somador port map(a => A(0), b => B(0), ci => c(0), s => S(0), co => c(1));

    U1: somador port map(a => A(1), b => B(1), ci => c(1), s => S(1), co => c(2));

    U2: somador port map(a => A(2), b => B(2), ci => c(2), s => S(2), co => c(3));

    U3: somador port map(a => A(3), b => B(3), ci => c(3), s => S(3), co => c(4));

    U4: somador port map(a => A(4), b => B(4), ci => c(4), s => S(4), co => c(5));

    U5: somador port map(a => A(5), b => B(5), ci => c(5), s => S(5), co => c(6));

    U6: somador port map(a => A(6), b => B(6), ci => c(6), s => S(6), co => c(7));

    U7: somador port map(a => A(7), b => B(7), ci => c(7), s => S(7), co => c(8));

    U8: somador port map(a => A(8), b => B(8), ci => c(8), s => S(8), co => c(9));

    U9: somador port map(a => A(9), b => B(9), ci => c(9), s => S(9), co => c(10));

    U10: somador port map(a => A(10), b => B(10), ci => c(10), s => S(10), co => c(11));

    U11: somador port map(a => A(11), b => B(11), ci => c(11), s => S(11), co => c(12));

    U12: somador port map(a => A(12), b => B(12), ci => c(12), s => S(12), co => c(13));

    U13: somador port map(a => A(13), b => B(13), ci => c(13), s => S(13), co => c(14));

    U14: somador port map(a => A(14), b => B(14), ci => c(14), s => S(14), co => c(15));

    U15: somador port map(a => A(15), b => B(15), ci => c(15), s => S(15), co => c(16));

    U16: somador port map(a => A(16), b => B(16), ci => c(16), s => S(16), co => c(17));

    U17: somador port map(a => A(17), b => B(17), ci => c(17), s => S(17), co => c(18));

    U18: somador port map(a => A(18), b => B(18), ci => c(18), s => S(18), co => c(19));

    U19: somador port map(a => A(19), b => B(19), ci => c(19), s => S(19), co => c(20)); 

    U20: somador port map(a => A(20), b => B(20), ci => c(20), s => S(20), co => c(21));

    U21: somador port map(a => A(21), b => B(21), ci => c(21), s => S(21), co => c(22));

    U22: somador port map(a => A(22), b => B(22), ci => c(22), s => S(22), co => c(23));

    U23: somador port map(a => A(23), b => B(23), ci => c(23), s => S(23), co => c(24));

    U24: somador port map(a => A(24), b => B(24), ci => c(24), s => S(24), co => c(25));

    U25: somador port map(a => A(25), b => B(25), ci => c(25), s => S(25), co => c(26)); 

    U26: somador port map(a => A(26), b => B(26), ci => c(26), s => S(26), co => c(27));

    U27: somador port map(a => A(27), b => B(27), ci => c(27), s => S(27), co => c(28));
    
    U28: somador port map(a => A(28), b => B(28), ci => c(28), s => S(28), co => c(29));

    U29: somador port map(a => A(29), b => B(29), ci => c(29), s => S(29), co => c(30));

    U30: somador port map(a => A(30), b => B(30), ci => c(30), s => S(30), co => c(31));

    U31: somador port map(a => A(31), b => B(31), ci => c(31), s => S(31), co => c(32));

    U32: somador port map(a => A(32), b => B(32), ci => c(32), s => S(32), co => c(33));

    U33: somador port map(a => A(33), b => B(33), ci => c(33), s => S(33), co => c(34));

    U34: somador port map(a => A(34), b => B(34), ci => c(34), s => S(34), co => c(35));

    U35: somador port map(a => A(35), b => B(35), ci => c(35), s => S(35), co => c(36));


end architecture behav;