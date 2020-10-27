frequencia:: Int -> [Int] -> Int
frequencia num lista
    |lista == [] = 0
    |head lista == num = 1 + frequencia num (tail lista)
    |otherwise = frequencia num (tail lista)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b