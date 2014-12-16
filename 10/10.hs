findPrimes :: Integral a => a -> [a]
findPrimes max
    | max < 2 = []
    | otherwise = calcPrimes [2..max]

calcPrimes :: Integral a => [a] -> [a]
calcPrimes [] = []
calcPrimes (x:xs) = x:(calcPrimes [a | a <- xs, a`mod`x /= 0])

--sum (findPrimes 1999999)
