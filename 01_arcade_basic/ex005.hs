final:: Int -> [Int] -> [Int]

final num lista
    |num <= 0 = []
    |otherwise = final (num+(-1)) (init lista) ++ [last lista]