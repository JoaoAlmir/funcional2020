intercal:: [Int] -> [Int] -> [Int]
intercal l1 l2
    |l1 == [] && l2 == [] = []
    |l1 == [] = [head l2] ++ intercal l1 (tail l2)
    |l2 == [] = [head l1] ++ intercal (tail l1) l2
    |otherwise = [head l1, head l2] ++ intercal (tail l1) (tail l2)
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b