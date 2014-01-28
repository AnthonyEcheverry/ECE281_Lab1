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



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity Lab1_Echeverry_Anthony is
--    Port ( A : in  STD_LOGIC;
--           B : in  STD_LOGIC;
--           C : in  STD_LOGIC;
--           X : out  STD_LOGIC;
--           Y : out  STD_LOGIC;
--           Z : out  STD_LOGIC);
--end Lab1_Echeverry_Anthony;
--
--architecture Behavioral of Lab1_Echeverry_Anthony is
--
--signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I, J, K: STD_LOGIC;
--
--begin
--
--
--
--
--
--A_NOT<=not A;
--B_NOT<=not B;
--C_NOT<=not C;
--D<=B OR C;
--E<=NOT A AND D;
--F<=A AND NOT B;
--G<=NOT B AND C;
--H<=B AND NOT C;
--I<=F AND NOT C;
--X<=E OR I;
--Y<=G OR H;
--Z<=C;
--
--
--
--end Behavioral;
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity twoscomp is
port( din : in std_logic_vector(7 downto 0);
dout : out std_logic_vector(7 downto 0));
end twoscomp;

architecture Behavioral of twoscomp is

begin

--dout <= not(din) + "00000001"; this is wrong, no sign
dout <= std_logic_vector (unsigned(not din) + 1);
end Behavioral; 
