checkPrime :: Integral a => a -> a -> Bool
checkPrime x i
    | i >= x = True
    | i <= 1 = error "Iterator of checkPrime should be > 1"
    | x`mod`i == 0 = False
    | otherwise = checkPrime x (i+1)

isPrime :: Integral a => a -> Bool
isPrime x
    | x <= 0 = error "Input to isPrime must be an integer > 0"
    | x <= 3 = True
    | otherwise = checkPrime x 2
    
--last (take 10001 [a | a <-[2..], isPrime a])