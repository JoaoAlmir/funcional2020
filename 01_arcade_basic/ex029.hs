intercal:: [Int] -> [Int] -> [Int]
intercal l1 l2
    |l1 == [] && l2 == [] = []--se as duas listas estiverem vazias
    |l1 == [] = [head l2] ++ intercal l1 (tail l2) --se acabar a primeira lista e sobrar a segunda
    |l2 == [] = [head l1] ++ intercal (tail l1) l2 --se acabar a segunda lista e sobrar a primeira
    |otherwise = [head l1, head l2] ++ intercal (tail l1) (tail l2) --se ainda tiver as duas listas
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b