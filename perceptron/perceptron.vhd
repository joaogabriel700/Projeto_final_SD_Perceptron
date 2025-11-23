entity perceptron is 
port(
	clk : in bit;
    rst : in bit;
    start : in bit;
    switch_in_x : in bit_vector(7 downto 0);
    switch_in_y : in bit_vector(7 downto 0);
    led_saida : out bit;
    seg_0, seg_1, seg_2, seg_3, seg_4, seg_5, seg_6	: out bit
);
end perceptron;  

architecture behav of perceptron is 

component rom_3x16 is 
    port(
        adress   : in bit_vector(1 downto 0);  
        dado_out : out bit_vector(15 downto 0) 
    );
end component; 

component register_8 is 
   port (
        clk : in bit;
        rst : in bit;
        load : in bit;
        D :  in bit_vector (7 downto 0);
        Q : out bit_vector (7 downto 0)
    );
end component;

component register_32 is 
  port (
        clk : in bit;
        rst : in bit;
        load : in bit;
        D :  in bit_vector (31 downto 0);
        Q : out bit_vector (31 downto 0)
    );
end component;

component register_36 is 
   port (
        clk : in bit;
        rst : in bit;
        load : in bit;
        D :  in bit_vector (35 downto 0);
        Q : out bit_vector (35 downto 0)
    );
end component; 

component mux_2x1_8bit is 	
    port(
    reg_x    : in bit_vector (7 downto 0);
    reg_y    : in bit_vector (7 downto 0); 
    select_m : in bit; 
    d        : out bit_vector (7 downto 0)
);
end component; 

component mux_4x1_24bit is 
    port(
        reg_1      : in bit_vector(23 downto 0);
        reg_2      : in bit_vector(23 downto 0);
        rom_in     : in bit_vector(23 downto 0); 
        select_sum : in bit_vector(1 downto 0);
        d1         : out bit_vector(23 downto 0)
    );
end component;

component corretor_sinal is 
    port(
        entrada: in bit_vector(23 downto 0);
        comp : in bit;
        saida : out bit_vector( 23 downto 0)
    );
end component;

component multiplicador_24bit is 
    port(
        dados : in bit_vector(15 downto 0);
        inp : in bit_vector(7 downto 0);
        P: out bit_vector(23 downto 0)
    );
end component;

component multiplicador_completo is 
	port(
        in_a : in bit_vector(15 downto 0);
        in_b : in bit_vector(7 downto 0);
        resultado : out bit_vector(23 downto 0) 
    );
end component;

component somador is
	port(a, b, ci: in bit;
		  co, s: out bit
		);
end component;

component somador_24bit is 
    port(
        A : in bit_vector (23 downto 0);
        B : in bit_vector (23 downto 0);
        S : out bit_vector(23 downto 0)
    );
end component;

component somador_36 is
    port(
        A : in bit_vector (35 downto 0);
        B : in bit_vector (35 downto 0);
        S : out bit_vector(35 downto 0)
    );
end component;

component decoder_7seg is 
    port(
        into : in bit;
        s0,s1,s2,s3,s4,s5,s6 : out bit
    ); 
end component; 

signal load_x : bit; 
signal load_y : bit;
signal load_reg1 : bit;
signal load_reg2 : bit;
signal load_acc : bit;
signal reset_acc : bit;
signal addr_rom : bit_vector (1 downto 0);
signal s_select_sum : bit_vector(1 downto 0); 
signal s_select_mult : bit;

signal s_out_regx : bit_vector (7 downto 0);
signal s_out_regy : bit_vector (7 downto 0);
signal s_reg1 : bit_vector (31 downto 0);
signal s_reg2 : bit_vector (31 downto 0); 
signal s_acc : bit_vector (35 downto 0);
signal s_mux2x1 : bit_vector (7 downto 0);
signal s_mux4x1 : bit_vector (23 downto 0);
signal s_rom : bit_vector (15 downto 0);
signal s_ext_out : bit_vector(35 downto 0); 
signal s_resultado_mult : bit_vector (23 downto 0); 
signal s_acc_in : bit_vector (35 downto 0);  
 
signal s_led : bit; 

type statetype is (wait_start, load_v, mult1, mult2, sum1, sum2, sum3, verifica_sinal, show0, show1);

signal currentstate, nextstate : statetype;

begin 

process (clk,rst)
begin
    if rst = '1' then 
        currentstate <= wait_start;
    elsif(clk'event AND clk = '1') then
        currentstate <= nextstate; 
    end if; 
end process; 

process(currentstate, start, s_acc)
begin 
    
    load_x <= '0';
    load_y <= '0';
    load_reg1 <= '0';    
    load_reg2 <= '0'; 
    load_acc <= '0';
    reset_acc <= '0'; 
    addr_rom <= "00";
    s_select_sum <= "00";
    s_select_mult <= '0'; 
    nextstate <= currentstate; 

    case currentstate is 
        
        when wait_start => 
            reset_acc <= '1';
            addr_rom <= "00";
            if start = '1' then 
                nextstate <= load_v;
            end if; 

        when load_v =>
            load_x <= '1';
            load_y <= '1'; 
            nextstate <= mult1;
            
        when mult1 => 
            load_reg1 <='1';
            s_select_mult <= '0';
            addr_rom <= "00";
            nextstate <= mult2;

        when mult2 => 
            load_reg2 <= '1';
            s_select_mult <= '1';
            addr_rom <= "01";
            nextstate <= sum1;

        when sum1 => 
            load_acc <='1';
            s_select_sum <= "00";
            nextstate <= sum2;

        when sum2 => 
            load_acc <='1';
            s_select_sum <= "01";
            nextstate <= sum3;

        when sum3 => 
            load_acc <='1';
            s_select_sum <= "10";
            nextstate <= verifica_sinal;

        when verifica_sinal => 
            if(s_acc(35) = '0') then 
                nextstate <= show1;
            else 
                nextstate <= show0; 
            end if;

        when show1 => 
            s_led <= '1'; 
            if(start = '0') then nextstate <= wait_start; end if;
            
        when show0 => 
            s_led <= '0';
            if(start = '0') then nextstate <= wait_start; end if; 

    end case; 
end process; 

    led_saida <= s_led;
    s_ext_out(23 downto 0) <= s_mux4x1;
    s_ext_out(35 downto 24) <= (others => s_mux4x1(23)); 

    memroria_rom : rom_3x16 port map (adress => addr_rom , dado_out => s_rom);

    registra_x : register_8 port map (clk => clk , rst=> rst , load => load_x, D=> switch_in_x, Q=>s_out_regx); 

    registra_y : register_8 port map (clk => clk, rst => rst, load => load_y, D=> switch_in_y, Q => s_out_regy);
    
    seleciona_multi : mux_2x1_8bit port map(reg_x => s_out_regx ,reg_y  => s_out_regy ,select_m => s_select_mult ,d => s_mux2x1);

    multiplica : multiplicador_completo port map (in_a => s_rom, in_b => s_mux2x1 , resultado=> s_resultado_mult); 

    registrador_1 : register_32 port map (clk => clk , rst=> rst , load => load_reg1, D=> "00000000" & s_resultado_mult , Q=>s_reg1); 

    registrador_2 : register_32 port map (clk => clk , rst=> rst , load => load_reg2, D=> "00000000" & s_resultado_mult , Q=>s_reg2);

    seleciona_soma : mux_4x1_24bit port map(reg_1 => s_reg1(23 downto 0) , reg_2 => s_reg2(23 downto 0) , rom_in => "00000000" & s_rom , select_sum => s_select_sum, d1 => s_mux4x1); 

    somar : somador_36 port map(A =>s_ext_out ,B=> s_acc, S=> s_acc_in); 

    acumulador : register_36 port map(clk => clk , rst=> reset_acc , load => load_acc, D=> s_acc_in, Q=>s_acc);

    decoder : decoder_7seg port map(into => s_led, s0 => seg_0 , s1=> seg_1 , s2 => seg_2, s3=> seg_3 , s4=> seg_4, s5=> seg_5, s6 => seg_6);

end architecture behav; 