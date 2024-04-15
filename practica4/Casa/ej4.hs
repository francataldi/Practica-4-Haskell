sumaImpares :: Int -> Int
sumaImpares x = sum (primerosImpares x)

primerosImpares :: Int -> [Int]
primerosImpares 0 = []
primerosImpares x = 1 : map (+2) (primerosImpares (x-1)) -- empiezo con 1, y con map (2), le estoy sumando dos a cada elemento de la lista
                                                        -- con x = 1, le sumariamos 2 a la lista vacia, lo cual daria 0

--------------- O ---------------

sumaImparesV2 :: Int -> Int
sumaImparesV2 x = x*x -- pues si elijo los 5 ´primeros impares (1,3,5,7,9), eso es = 5^2 = 25 :)

sumaImparesV3 :: Integer -> Integer
sumaImparesV3 n = sum [2*i + 1 | i <- [0..n-1]] --2*n + 1 siempre va a ser impar, pues 2n es par
-- esta funcion lo q hace es q agarra la lista desde 0 hasta n-1 de numeros
-- la funcion es el resultado de la suma de todos los n= 2*i +1, tal que i es algun numero que esta en el intervalo [0,n-1]









