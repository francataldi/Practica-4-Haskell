sumaPotencias :: Integer -> Integer -> Integer -> Integer 
sumaPotencias q n m = sum [ q^(a+b)| a <-[1..n], b <- [1..m]]

