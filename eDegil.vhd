--------------------------------------------------
-- DEGIL KAPISI
-- Giris sinyalini tersleyerek veren lojik kapi
-- Mustafa Cenk AYDIN
-- 22/03/2022
-- Giris Port(lar?):a
-- Cikis Port(lar?):f
--------------------------------------------------
Library IEEE;
Use IEEE.STD_LOGIC_1164.all;

Entity eDegil is
  Port(
    a: IN std_logic;
    f: OUT std_logic
  );
End eDegil;

Architecture Behv of eDegil is
--varsa ara sinyal ve komponent tan?mlar?
Begin
  f<= NOT(a); -- a giri?i tersle f' e aktar
End Behv;
