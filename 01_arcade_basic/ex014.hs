elemento num lista
    |num >= 0 = lista !! num --se for positivo
    |otherwise = lista !! ((length lista) + num) --se for negativo pega diferença entre tam da lista e num

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b