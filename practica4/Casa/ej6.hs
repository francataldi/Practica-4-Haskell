
sumaDigitos :: Integer -> Integer
sumaDigitos 0 = 0
sumaDigitos n = abs (n `mod` 10) + sumaDigitos (n `div` 10)
                -- n mod 10, toma el ultimo digito de n
                -- abs se usa para que funcione en caso q el ultimo digito de n sea (-)
                            
--si pongo 456 me queda:
-- 456 => 6 + 456/10 + 45/10 + 4/10 = 6 + 5 + 4 + 0, pues div saca el decimal, directamente trunca jeje






