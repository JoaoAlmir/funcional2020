intersec :: [Int] -> [Int] -> [Int]
intersec a b
        | a == [] = []
        | b == [] = []
        |otherwise = [x| x <- a, elem x b]