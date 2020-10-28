pertence:: Int -> [Int] -> Bool
pertence num lista
    |lista == [] = False --se a acabar sem encontrar
    |head lista == num = True -- se encontrar retorna true
    |otherwise = pertence num (tail lista) --chama recursivamente com a cauda da lista

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b