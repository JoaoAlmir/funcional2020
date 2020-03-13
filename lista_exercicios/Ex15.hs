unique:: [Int] -> [Int]
unique [] = []
unique lista
    | last lista `elem` init lista = unique (init lista)
    | otherwise = unique (init lista) ++ [last lista]