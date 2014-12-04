fib :: Integral a => a -> a -> a -> a
fib lim a b
    | cur > lim = 0
    | cur == 0 = fib lim 0 1
    | odd cur = fib lim b cur
    | otherwise = cur + fib lim b cur
    where cur = a+b

-- fib 4000000 0 0