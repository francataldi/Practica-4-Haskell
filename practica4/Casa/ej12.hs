sucesion :: Integer -> Float
sucesion 1 = 2 -- a1 = 2
sucesion n = 2 + 1 / sucesion (n-1)

aproximarRaizDeDos :: Integer -> Float
aproximarRaizDeDos n = sucesion n - 1



