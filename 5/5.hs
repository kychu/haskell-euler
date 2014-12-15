isSuperDivisible :: Integral a => a -> a -> Bool
isSuperDivisible num den
    | den <= 1 = True
    | num`mod`den == 0 = isSuperDivisible num (den-1)
    | otherwise = False
    
--take 1 [a | a <- [20, 40..], (isSuperDivisible a 19)]