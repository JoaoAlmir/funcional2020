pertence :: Int -> [Int] -> Bool
pertence x lista =
    if x `elem` lista
        then True
    else
        False