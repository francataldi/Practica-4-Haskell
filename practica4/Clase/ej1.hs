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

-- 8)
iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n | n == 0 = 1
               | otherwise = n `div` 10 ^

cantDigitos :: Int -> Int
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos (sacarUnidades n)
              where sacarUnidades n = div n 10
--seguir el ej 8 solo

------- CLASE DEL 17/4 ------------
-- EJERCICIO 13 --

-- ESPECIFICACION --

--Crear una funcion sumatoriaDoble { n : Z , m : Z
--          requiere {n >=1 ^ m >= 1}
--          asegura  { res <=> es la suma desde i = 1 hasta n, de la sumatoria desde j = 1 hasta m con el termino general igual a : i^j, con i y j enteros}
--}

-- RESOLUCIÒN --
sumatoriaDoble :: Integer -> Integer -> Integer
sumatoriaDoble n m | n == 1 = funcionG 1 m 
                   | n > 1 = funcionG n m + sumatoriaDoble (n - 1) m
-- divido la sumatoria desde i=1 hasta n de g(i,m), entionces despues en el segundo paso:
-- la achico como la sumatoria desde i = 1 hasta n-1 de g(i,m) + g(n,m)

funcionG :: Integer -> Integer -> Integer
funcionG n 1 = n
funcionG n m = n ^ m + funcionG n (m - 1)

-- EJERCICIO 16 -- 
menorDivisor :: Int -> Int
menorDivisor x  | mod x 2 == 0 = 2
                | x == 1 = 1
                | otherwise = menorDivisorHasta x 2
-- si mod x 2 es 0, entonces es par, entonces devuelvo cero

menorDivisorHasta :: Int -> Int -> Int
menorDivisorHasta x y   | mod x y == 0 = y
                        | otherwise = menorDivisor x (y+1)

-- la funcion termina cuando llega a y
--pista: menor divisor de un numero hastacierto valor --
-- el valor hasta el q busco el menor divisor es el que voy a usar para ir iterando para encontrando el menor divisor en esta funcion




-- k es cuantop primos sumas ; y n es ekl numerio por el cual te preguntas


-- pista : func 3 10 = t
--               3 17 = f

-- i es desde ; k es cuantos primos







