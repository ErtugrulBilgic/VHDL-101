----------------------
-- Teklik Biti
-- standart 7 girisli 8 bit cikisli cift parity kodlayici
-- Mustafa Cenk AYDIN
-- 23/03/2022
-- Giris(ler): aVec (7 bit)
-- Cikis(lar): fVec (8 bit), 8. bit parity
Library IEEE;
Use IEEE.std_logic_1164.all;

Entity eTekility is
  Port(
    aVec: in std_logic_vector(6 downto 0); -- 7 bit giris
    fVec: out std_logic_vector(7 downto 0) -- 8 bit �ikis 
  );
End Entity;

Architecture Arch_tekility of eTekility is
Signal p: std_logic;
Begin
p <= aVec(0) xor aVec(1) xor aVec(2) xor aVec(3) xor aVec(4) xor aVec(5) xor aVec(6);
    -- (1) 100 0000 -> 
    fVec <= aVec & not p; -- concat
End Arch_tekility;

