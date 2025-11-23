entity mux_2x1_8bit is 
    port(
    reg_x    : in bit_vector (7 downto 0);
    reg_y    : in bit_vector (7 downto 0); 
    select_m : in bit; 
    d        : out bit_vector (7 downto 0)
);
end mux_2x1_8bit;

architecture behav of mux_2x1_8bit is 
begin 
    
    d(0) <= (reg_x(0) and not(select_m)) or (reg_y(0) and select_m); 

    d(1) <= (reg_x(1) and not(select_m)) or (reg_y(1) and select_m);

    d(2) <= (reg_x(2) and not(select_m)) or (reg_y(2) and select_m);

    d(3) <= (reg_x(3) and not(select_m)) or (reg_y(3) and select_m);

    d(4) <= (reg_x(4) and not(select_m)) or (reg_y(4) and select_m);

    d(5) <= (reg_x(5) and not(select_m)) or (reg_y(5) and select_m);

    d(6) <= (reg_x(6) and not(select_m)) or (reg_y(6) and select_m);

    d(7) <= (reg_x(7) and not(select_m)) or (reg_y(7) and select_m);

end architecture behav; 