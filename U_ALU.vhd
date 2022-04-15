----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:56 11/27/2020 
-- Design Name: 
-- Module Name:    U_ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Clk           : in  STD_LOGIC;		-- Clock
			  RdDataB       : in  STD_LOGIC_VECTOR (15 downto 0);
           RdDataS       : in  STD_LOGIC_VECTOR (15 downto 0);
			  ALUOP         : in  STD_LOGIC_VECTOR (2 downto 0);
			  C_EN 	 	    : in  STD_LOGIC;
			  N_EN 	 	    : in  STD_LOGIC;
			  OV_EN	 	    : in  STD_LOGIC;
			  Z_EN	 	    : in  STD_LOGIC;
			  C 		       : out STD_LOGIC;		-- Carry flag
			  N 		       : out STD_LOGIC;		-- Negate flag
			  OV 		       : out STD_LOGIC;		-- Overflow flag
			  Z 		 	    : out STD_LOGIC;		-- Zero flag
           Y 		 	    : out STD_LOGIC_VECTOR (15 downto 0)
			  );
end ALU;

architecture Behavioral of ALU is
 
	signal final	  : STD_LOGIC_VECTOR(16 downto 0);
	signal overflow  : STD_LOGIC;
	signal zero      : STD_LOGIC;
	signal negative  : STD_LOGIC;
	signal carry     : STD_LOGIC;
	signal FF1L      : STD_LOGIC_VECTOR(15 downto 0);
	signal SL 		  : STD_LOGIC_VECTOR(16 downto 0);
	signal COM 		  : STD_LOGIC_VECTOR(16 downto 0);
		
begin
	
FF1L <= x"0001" when RdDataS(15) ='1' else 
        x"0002" when RdDataS(14) ='1' else
        x"0003" when RdDataS(13) ='1' else 			
        x"0004" when RdDataS(12) ='1' else 
		  x"0005" when RdDataS(11) ='1' else 
		  x"0006" when RdDataS(10) ='1' else 
		  x"0007" when RdDataS(9)  ='1' else 
		  x"0008" when RdDataS(8)  ='1' else 
		  x"0009" when RdDataS(7)  ='1' else 
		  x"000A" when RdDataS(6)  ='1' else 
		  x"000B" when RdDataS(5)  ='1' else 
		  x"000C" when RdDataS(4)  ='1' else 
		  x"000D" when RdDataS(3)  ='1' else 
		  x"000E" when RdDataS(2)  ='1' else 
		  x"000F" when RdDataS(1)  ='1' else 
		  x"0010" when RdDataS(0)  ='1' else 
		  x"0000" ;

	COM <= '0'&not(RdDataS);
	
	SL <='0'&RdDataS(14 downto 0)&b"0";
	
with ALUOP select
	
	final <= ((b"0"&RdDataB) + (b"0"&RdDataS)) when "000",						-- ADD   Wb ,Ws, Wd
			    (('0'&RdDataB) + ('0'&(not RdDataS)) + 1) when "001",			-- SUB   Wb, Ws, Wd				 
				 ((b"0"&RdDataB) and (b"0"&RdDataS)) when "010",					-- AND   Wb, Ws, Wd
				 ((b"0"&RdDataB) or (b"0"&RdDataS)) when "011",						-- IOR   Wb, Ws, Wd
				   b"0"&FF1L when "100",													-- FF1L  Ws, Wd
					SL when "101",																-- SL    Ws, Wd
					COM when "110",															-- COM   Ws, Wd
				 x"0000"&b"0" when others;
				 
	Y <= final(15 downto 0);
	
	 carry <= final(16); 
						 
--	carry <= ('0'&RdDataB) + ('0'&RdDataS) when ALUOP = "000" else  --ADD
--				('0'&RdDataB) + ('0'&RdDataS) +1 when ALUOP = "001" else  --SUB
--				RdDataS(0) when ALUOP = "100" else --FF1L
--				SL when ALUOP = "101"; 				  --SL
				
	C <= carry when (rising_edge(Clk) and C_EN = '1');	
	  
	zero <= '1' when final(15 downto 0) = x"0000" 
			  else '0';
			  
	overflow <= '1' when ((ALUOP = "000" and RdDataB(15) = RdDataS(15) and final(15) = (not RdDataB(15))) or		-- ADD Wb ,Ws, Wd
								 (ALUOP = "001" and RdDataB(15) = (not RdDataS(15)) and final(15) = RdDataS(15))) else   -- SUB Wb, Ws, Wd
					'0';
	
	OV <= overflow when (rising_edge(Clk) and OV_EN = '1');
	
	negative <= final(15);
	
	N  <= negative when (rising_edge(Clk) and N_EN = '1');
	
	Z <= zero when rising_edge(Clk) and Z_EN ='1';
	
end Behavioral;