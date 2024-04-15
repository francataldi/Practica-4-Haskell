aproximacionEuler :: Integer -> Float
aproximacionEuler 0 = 1
aproximacionEuler n = sum [1 / fromInteger (factorial i)  | i <- [0..n]] --from integer convierte el factorial a float para poder operar segun la definicion de la funcion

-- con euler = 2,718281.....

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = product [1..n] 

--11)b)
e :: Float
e = aproximacionEuler 10

