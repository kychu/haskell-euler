{-|
 - A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 -
 - Find the largest palindrome made from the product of two 3-digit numbers.
 - -}

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs)
    | x == (last xs) = isPalindrome (init xs)
    | otherwise = False

isIntegerPalindrome = isPalindrome . show
productsUsingNumbersBetween a b = [ x*y | x <- [a..b], y <- [x..b]]

-- maximum $ filter isIntegerPalindrome (productsUsingNumbersBetween 100 999)
