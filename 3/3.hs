prfac2 :: Integral a => a -> a -> [a]
prfac2 n m
    | n == m = [n]
    | n `mod` m == 0 = m : prfac2 (n `quot` m) m
    | otherwise = prfac2 n (m+1)

prfac :: Integral a => a -> [a]
prfac n
    | n == 1 = [1]
    | otherwise = prfac2 n 2

-- maximum (prfac 600851475143)