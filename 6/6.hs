square :: Num a => a -> a
square x = x*x

-- sum [square a | a <- [1..100]] - square(sum [1..100])