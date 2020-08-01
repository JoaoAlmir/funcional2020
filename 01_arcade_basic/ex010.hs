min2 :: Int -> Int -> Int
min2 a b
    |a+(-b) == 0 = a
    |a+(-b) > 0 = b
    |otherwise = a