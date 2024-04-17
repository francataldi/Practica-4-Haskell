sumaRacionalesGeneral :: Integer -> Integer -> Float
sumaRacionalesGeneral n m = sum[ fromInteger(p)/fromInteger(q) | p <- [1..n], q <- [1..m]]

-- esta suamtoria convierte el entero p y q a float para poder efectuar el calculo correctamente
-- toma como termino general p/1, con subindices que varian en cuanto a p desde el 1 como valor minimo, hasta n como valor maximo
-- y en cuanto a q sus subindices varian desde 1 como valor minimo hasta m como maximo
-- resultando asi la sumatoria desde p=1 hasta n, de la sumatoria desde q=1 hasta m, de p sobre q (p/q)

-- FORMA RECURSIVA --
sumaRacionalesInterna :: Integer -> Integer -> Float
sumaRacionalesInterna p 1 = fromIntegral(p)
sumaRacionalesInterna p m = fromIntegral(p)/fromIntegral(m) + (sumaRacionalesInterna p (m-1))

sumaRacionales :: Integer -> Integer -> Float
sumaRacionales 1 m = sumaRacionalesInterna 1 m
sumaRacionales n m = sumaRacionalesInterna n m + sumaRacionales (n-1) m









