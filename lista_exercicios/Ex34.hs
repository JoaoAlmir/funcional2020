sdig:: Int -> Int
sdig num
    | num < 10 = num
    | otherwise = num `mod` 10 + sdig (num `div` 10)
