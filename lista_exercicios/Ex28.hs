--Incompleto
rotDir:: Int -> String -> String
rotDir num lista
        | num < 1 = []
        | otherwise = rotDir num(-1) lista ++ [head lista]