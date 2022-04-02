------------------------------------------------------------------------
-- Hamming hata bulma
-- standart 4 bit girisli 7 bit cikisli 
-- Mustafa Cenk AYDIN
-- 27/03/2022
-- Giris(ler): A(4 bit), B(7 bit, test icin karsiya iletildigi dusunulen)
-- Cikis(lar): F(7 bit, hesaplanan), S(3 bit, hamming hata bulma bitleri)
-------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

Entity eHam is
  Port (
        A: in std_logic_vector(3 downto 0);
        fA: out std_logic_vector(6 downto 0);
        B: in std_logic_vector(6 downto 0);
        fB: out std_logic_vector(6 downto 0);
        S: out std_logic_vector(2 downto 0)
        
  );
End Entity;

Architecture behv of eHam is
signal C: std_logic_vector(6 downto 0);

Begin
  fA(3 downto 0) <= A;
  fA(4)<= A(0) xor A(1) xor A(2);
  fA(5)<= A(1) xor A(2) xor A(3);
  fA(6)<= A(2) xor A(3) xor A(0);
  C(0) <= B(0);
  C(1) <= B(1);
  C(2) <= B(2);
  C(3) <= B(3);
  C(4) <= B(0) xor B(1) xor B(2);
  C(5) <= B(1) xor B(2) xor B(3);
  C(6) <= B(2) xor B(3) xor B(0);
  Fb <= C;
  
  S(2) <= C(6) xor B(6);
  S(1) <= C(5) xor B(5);
  S(0) <= C(4) xor B(4);
End behv;
  
  
  
  
  
  
  
