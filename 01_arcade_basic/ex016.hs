total lista
    |lista == [] = 0
    |otherwise = 1 + total (tail lista) --soma 1 caso ainda tenha elementros

main = do
    a <- readLn :: IO [Int]
    print $ total a