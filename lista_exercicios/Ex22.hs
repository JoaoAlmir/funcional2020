intersec :: [Int] -> [Int] -> [Int]
intersec a b =
        [x| x <- a, x `elem` b]