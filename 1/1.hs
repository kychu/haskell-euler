summod :: (Integral a) => a -> a
summod n =
    sum [a | a <- [1..(n-1)], a `mod` 3 == 0 || a `mod` 5 == 0]

-- summod 1000
