-- 1)
fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci(n-1) + fibonacci(n-2)

-- 2)
parteEntera :: Float -> Integer
parteEntera x = truncate x

-- 7)
todosDigitosIguales :: Int -> Bool
todosDigitosIguales x | x < 10 = True -- todo num de 1 digito es igual a si mismo
                      | otherwise = digitoUnidades x == digitoUnidades(sacarUnidades x)
                                    && todosDigitosIguales(sacarUnidades x)

digitoUnidades :: Int -> Int
digitoUnidades x = mod x 10

sacarUnidades :: Int -> Int
sacarUnidades x = div x 10 

-- mod n 10 me da el ultimo digito a n
-- div n 10 le saca el ultimo digito a n

-- ALTERNATIVA DE 2)
parteDosEntera :: Float -> Integer
parteDosEntera x |  x >= 0 && x < 1 = 0 --si x esta entre 0 y 1, devuelve 0
                 | otherwise = 1 + parteDosEntera (x-1) -- si x es mayor a 0, hago 1 + x-1, y tiro los decimales fuera :)

-- ALTERNATIVA DE 2) TOMANDO NEGATIVOS
parteDosEnteraa :: Float -> Integer
parteDosEnteraa x |  x >= 0 && x < 1 = 0 
                 | x > -1 && x < 0 = -1
                 | x >= 1 = 1 + parteDosEnteraa (x-1)
                 | otherwise = (-1) + parteDosEnteraa (x+1) 

