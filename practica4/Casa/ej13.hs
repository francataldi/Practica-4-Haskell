sumatoriaGeneral :: (Integer,Integer) -> Integer
sumatoriaGeneral (n,m)= sum [ i^j | j <-[1..m], i <- [1..n] ]


