pertence:: Int -> [Int] -> Bool
pertence num lista
    |lista == [] = False
    |head lista == num = True
    |otherwise = pertence num (tail lista)

frequencia:: Int -> [Int] -> Int
frequencia num lista
    |lista == [] = 0
    |head lista == num = 1 + frequencia num (tail lista)
    |otherwise = frequencia num (tail lista)


unique:: [Int] -> [Int]
unique lista
    |lista == [] = []
    |head lista `elem` tail lista = unique (tail lista)
    |otherwise = (head lista):unique (tail lista)


intercal:: [Int] -> [Int] -> [Int]
intercal l1 l2
    |l1 == [] && l2 == [] = []
    |l1 == [] = [head l2] ++ intercal l1 (tail l2)
    |l2 == [] = [head l1] ++ intercal (tail l1) l2
    |otherwise = [head l1, head l2] ++ intercal (tail l1) (tail l2)