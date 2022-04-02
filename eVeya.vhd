------------------------------------------------
-- VEYA kapisi
-- standart 3 adet girisi olan VEYA kapisi tasarim?
-- Mustafa Cenk AYDIN
-- 22/03/2022
-- Giris(ler): a,b,c
-- Çikis(lar): f
------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-- eVeya, tasarlanan devre elmaninin adi
Entity eVeya is 
  Port (
    a: in std_logic;
    b: in std_logic;
    c: in std_logic;
    f: out std_logic
  );
end eVeya;

architecture eVeya_Behv of eVeya is
Signal s: std_logic;
Begin
  s <= a or b;
  f <= s or c;
End eVeya_Behv;

