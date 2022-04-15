----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:24:01 11/27/2020 
-- Design Name: 
-- Module Name:    U_Ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (4 downto 0);
           N_EN : out  STD_LOGIC;
           OV_EN : out  STD_LOGIC;
           Z_EN : out  STD_LOGIC;
           C_EN : out  STD_LOGIC;
           ALU_OP : out  STD_LOGIC_VECTOR (2 downto 0);
           MEM_WR : out  STD_LOGIC;
           MEM_2Reg : out  STD_LOGIC;
			  Reg_Wr:out STD_Logic;
			  Branch:out STD_Logic;
			  Reg_Dest:out STD_Logic;
			  Dif :in STD_Logic_Vector (2 downto 0)
			   );
end ctrl;

architecture Behavioral of ctrl is

begin

ALU_OP<="000" when OP="01000"  else     --ADD
				"001" when OP="01010" else  --SUB
				"011" when OP="01100" else  --AND
				"010" when OP= "01110" else --IOR
				"100" when OP ="11001" else --FF1l
				"101" when OP="11010" else  -- SL
				"110" when OP="11101" else  -- COM
				"111" when OP="01110" ;     -- IOR

N_EN<='1' when OP="01000" or     --ADD
                 OP="01010" or     --Sub
					  OP="01100" or     --AND
					  OP="01110" or     --IOR
					  OP="11010" or     --SL
					  OP="11101" or     --COM
					  OP="01110" 		  --IOR #lit5
					  else '0';
					  
OV_EN <='1' when OP="01000" or --ADD
					    OP="01010"    --Sub     
						 else '0';
						 
Z_EN <='1' when OP="01000" or    --ADD
                  OP="01010" or    --Sub
					   OP="01100" or    --AND
					   OP="01110" or 	  --IOR
              		OP="11010" or    --SL
					   OP="11101" or    --COM
						OP="01110"		  --IOR #lit5	
                   else '0';			

C_EN <='1' when OP="01000" or   --ADD
					    OP="01010" or  --Sub
				       OP="11001" or  --FF1L
						 OP="11010"     --SL 
						 else '0';						 

MEM_WR <= '1' when OP = "10001" else
				'0';

MEM_2Reg <= '1' when OP = "10000"  else
				'0';

Reg_Wr <= '1' when OP="01000" or   --ADD
                  OP= "01010" or   --Sub
					   OP= "01100" or   --AND
					   OP= "01110" or   --IOR
						OP= "10000" or   --MOV f
						OP= "11001" or   --FF1l
						OP= "10110" or   --SL
						OP= "11101" or   --COM
						OP= "11101"      -- IOR #lit5
                   else '0';						
						
Reg_Dest <= '1' when    OP=  "01000" or --ADD
	                     OP = "01010" or --SUB
								OP = "01100" or --AND
								OP = "01110" or --IOR
								OP = "11001" or --FF1l 
								OP = "11101"    --COM
								else '0';

Branch <='1' when OP="00110" else '0';
                  
						 
end Behavioral;
