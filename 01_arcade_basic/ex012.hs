fatorial:: Int -> Int
fatorial num
    |num <= 0 = 1
    |otherwise = fatorial num+(-1)