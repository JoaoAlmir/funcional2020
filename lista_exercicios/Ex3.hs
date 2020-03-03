fatorial :: Int -> Int
fatorial x =
    if x < 2
        then 1
    else
        x * fatorial (x-1)