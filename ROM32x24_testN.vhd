----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:01 11/27/2020 
-- Design Name: 
-- Module Name:    ROM32x24 - Behavioral 
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

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture Behavioral of ROM32x24 is
type tROM is array(0 to 31) of std_logic_vector(23 downto 0);
constant ROM: tROM :=(
                       x"808101", --0        MOV 0x1020, W1      mov     0x1020, w1  ;INW0=aaab
                       x"808112", --1        MOV 0x1022, W2      mov     0x1022, w2  ;INW1=5555
                       x"408182", --2        ADD W1, W2, W3      add     w1, w2,w3
                       x"608282", --3        AND W1, W2, W5      and     w1, w2,w5   
                       x"708302", --4        IOR W1, W2, W6      ior     w1, w2,w6 
                       x"CF8202", --5        FF1L W2, W4         ff1l    w2, w4  
                       x"D00381", --6        SL  W1, W7          sl      w1, w7
                       x"EA8401", --7        COM W1, W8			  com     w1, w8	
                       x"7084E6", --8        IOR W1,#0b00110,W9  ior		 w1, #0b00110, w9
                       x"888121", --9        MOV W1, 0x1024      mov     w1, 0x1024
                       x"888122", --10       MOV W2, 0x1024      mov     w2, 0x1024
                       x"888123", --11       MOV W3, 0x1024      mov     w3, 0x1024
                       x"888124", --12       MOV W4, 0x1024      mov     w4, 0x1024
                       x"888125", --13       MOV W5, 0x1024      mov     w5, 0x1024
							  x"888126", --14			MOV W6, 0x1024      mov     w6, 0x1024  
							  x"888127", --15       MOV W7, 0x1024      mov     w7, 0x1024
							  x"32FFEF", --16			BRA Z, 0x2B8 		  bra     Z,  LOOP
							  x"37FFEE", --17			BRA 0x2B8           bra         LOOP
							  x"000000", --18
							  x"000000", --19
							  x"000000", --20
							  x"000000", --21
							  x"000000", --22
							  x"000000", --23
							  x"000000", --24
							  x"000000", --25
							  x"000000", --26
							  x"000000", --27
							  x"000000", --28
							  x"000000", --29
							  x"000000", --30
                       x"000000"	--31						  
 );      
begin

Data<=ROM(conv_integer(Addr));

end Behavioral;

