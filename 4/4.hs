intToArray :: Integral t => t -> [t]
intToArray x
    | x < 10 = [x]
    | otherwise = concat [intToArray(x`quot`10), [x`mod`10]]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs)
    | x == (last xs) = isPalindrome (init xs)
    | otherwise = False

multArrays :: Num a => [a] -> [a] -> [a]
multArrays [] _ = []
multArrays (x:xs) (ys) = concat [(map (x*) ys), (multArrays xs ys)]

-- maximum [a | a <- (multArrays [100..999] [100..999]), isPalindrome (intToArray a)]