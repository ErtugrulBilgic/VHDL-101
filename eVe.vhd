------------------------------------------------
-- VE kapisi
-- standart 3 adet girisi olan VE kapisi tasarimi
-- Mustafa Cenk AYDIN
-- 23/03/2022
-- Giris(ler): a,b,c
-- Çikis(lar): f
------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-- eVe, tasarlanan devre elmaninin adi
Entity eVe is 
  Port (
    a: in std_logic;
    b: in std_logic;
    c: in std_logic;
    f: out std_logic
  );
end eVe;

architecture eVe_Behv of eVe is
Signal s: std_logic;
Begin
  s <= a and b;
  f <= s and c;
End eVe_Behv;

