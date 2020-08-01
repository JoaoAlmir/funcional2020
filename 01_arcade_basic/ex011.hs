min3:: Int -> Int -> Int -> Int
min3 a b c
    |a+(-b) == 0 && b+(-c) == 0 = a
    |a+(-b) < 0 && a+(-c) < 0 = a
    |b+(-a) < 0 && b+(-c) < 0 = b
    |otherwise = c