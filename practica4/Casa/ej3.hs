esDivisible :: Integer -> Integer -> Bool
esDivisible x y | x == 0 && y == 0 = False --Indeterminado
                | x == 0 = True --Cero es divisible por cualq Z en los Int
                | y == 0 && x/= 0 = False --No puedo dividir por 0
                | x < y = False --En los enteros me quedaria como resultado una fracción
                    |otherwise = esDivisible (x - y) y
                
                
