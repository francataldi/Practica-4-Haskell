medioFac :: Integer -> Integer                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
medioFac 0 = 1
medioFac 1 = 1
medioFac x = product [ x- 2*i | i <- [0..(x-1) `div` 2]] -- literalmente le dije, hace x- 2i con un valor de i que varie desde 0 hasta (x-1) /2

