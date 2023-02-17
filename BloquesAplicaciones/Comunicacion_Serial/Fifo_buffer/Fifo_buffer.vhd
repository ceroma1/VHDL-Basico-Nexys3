library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Fifo_buffer is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           W_data : in  STD_LOGIC_VECTOR (7 downto 0);
           empty : out  STD_LOGIC;
			  full : out  STD_LOGIC;
           r_data : out  STD_LOGIC_VECTOR (7 downto 0));
end Fifo_buffer;

architecture Behavioral of Fifo_buffer is

type reg_file_type is array (15 downto 0) of std_logic_vector(7 downto 0);
signal array_reg : reg_file_type ;
signal w_ptr_reg,w_ptr_next,w_ptr_succ:std_logic_vector(3 downto 0);
signal r_ptr_reg,r_ptr_next,r_ptr_succ:std_logic_vector(3 downto 0);
signal full_reg,empty_reg,full_next,empty_next:std_logic;
signal wr_op: std_logic_vector(1 downto 0);
signal wr_en: std_logic;

begin
--
process(clk, reset)
begin
	if (reset='0') then
		array_reg <= (others => (others =>'0'));
	elsif (clk'event and clk='1') then
		if wr_en='1' then
			array_reg(to_integer(unsigned(w_ptr_reg)))<= w_data;
		end if;
	end if;
end process;

r_data <= array_reg(to_integer(unsigned(r_ptr_reg)));
wr_en  <= wr and (not full_reg);
--
process(clk,reset)
begin
	if(reset='0') then
		w_ptr_reg <= (others => '0');
		r_ptr_reg <= (others => '0') ;
		full_reg <= '0';
		empty_reg <= '1';
	elsif (clk'event and clk='1') then
		w_ptr_reg <= w_ptr_next ;
		r_ptr_reg <= r_ptr_next ;
		full_reg <= full_next;
		empty_reg <= empty_next ;
	end if;
end process;

w_ptr_succ <= std_logic_vector(unsigned(w_ptr_reg)+1);
r_ptr_succ <= std_logic_vector(unsigned(r_ptr_reg)+1);
wr_op <= wr&rd;

process (w_ptr_reg,w_ptr_succ,r_ptr_reg,r_ptr_succ,wr_op,empty_reg,full_reg)
begin
	w_ptr_next <= w_ptr_reg;
	r_ptr_next <= r_ptr_reg;
	full_next <= full_reg;
	empty_next <= empty_reg ;
	case wr_op is
		when "00" => -- no op
		when "01" => -- read
			if(empty_reg /= '1') then -- not empty
				r_ptr_next <= r_ptr_succ;
				full_next <= '0';
				if (r_ptr_succ=w_ptr_reg) then
					empty_next <='1';
				end if ;
			end if;
		when "10" => -- write
			if(full_reg /= '1') then -- not full
				w_ptr_next<= w_ptr_succ;
				empty_next <= '0';
				if (w_ptr_succ=r_ptr_reg) then
					full_next <='1';
				end if ;
			end if ;
		when others => -- write/read ;
			w_ptr_next <= w_ptr_succ ;
			r_ptr_next <= r_ptr_succ ;
	end case;
end process;
full <= full_reg;
empty <= empty_reg;
end Behavioral;

