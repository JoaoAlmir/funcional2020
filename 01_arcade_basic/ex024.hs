
unique:: [Int] -> [Int]
unique lista
    |lista == [] = []
    |head lista `elem` tail lista = unique (tail lista)
    |otherwise = (head lista):unique (tail lista)


main = do
    a <- readLn :: IO [Int]
    print $ unique a