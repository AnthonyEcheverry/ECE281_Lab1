----------------------------------------------------------------------------------
-- Company: USAF Academy League of Engineers
-- Engineer: 
-- 
-- Create Date:    21:18:53 01/23/2014 
-- Design Name: Prelab_1
-- Module Name:    Lab1_Echeverry_Anthony - Behavioral 
-- Project Name: 2's Compliment Generator
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Echeverry_Anthony is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Echeverry_Anthony;

architecture Behavioral of Lab1_Echeverry_Anthony is

signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I : STD_LOGIC;

begin

A_NOT<=A_NOT;
B_NOT<=B_NOT;
C_NOT<=C_NOT;
D<=B OR C;
E<=A_NOT AND D;
F<=A AND B_NOT;
G<=B_NOT AND C;
H<=B AND C_NOT;
I<=F AND C_NOT;
X<=E OR I;
Y<=G OR H;
Z<=C;



end Behavioral;

