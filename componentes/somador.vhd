entity somador is 
	port(a, b, ci: in bit;
		  co, s: out bit
			);
end somador;

architecture behav of somador is
begin
	s  <= a xor b xor ci;
   co <= (a and b) or (b and ci) or (a and ci);
end;