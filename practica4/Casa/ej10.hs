--10)a)
f1 :: Integer -> Integer
f1 0 = 1
f1 1 = 2
f1 n = sum [2^i | i <- [0..n]]

--10)b)
f2 :: (Integer,Float) -> Float
f2 (1,1)= 1
f2 (n,q) = sum [ q^i | i <- [1..n]]

--10)c)
f3 :: (Integer,Float) -> Float
f3 (0,0) = 1 --pq todo n a la 0 es 1 :)
f3 (n,q) = sum [q^i | i <- [1..2*n]]

--10)d)
f4 :: (Integer,Float) -> Float
f4 (0,0) = 1
f4 (n,q) = sum [ q^i | i <- [n..2*n]]





