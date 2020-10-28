intersec :: [Int] -> [Int] -> [Int]
intersec a b = [x| x <- a, x `elem` b] --gera uma lista filtrando os elemtentos da lista a que são presentes nos elementos de b

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b