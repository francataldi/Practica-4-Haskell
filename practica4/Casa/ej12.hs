aproxRaizDeDos :: Integer -> Float
aproxRaizDeDos 1 = 2 -- a1 = 2
aproxRaizDeDos n = 2 + 1 / (aproxRaizDeDos (n-1)) -- an_1 = 2 + 1/ an_1

--aproxRaizDeDos (2) = 2 + 1 / a2-1 = 2 + 1 / 1 = 2 + 1/2 = 5/2



