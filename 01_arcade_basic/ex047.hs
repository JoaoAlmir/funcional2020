splitints :: [Int] -> ([Int],[Int])
splitints lista = ([x| x <- lista, odd x ],[x| x <- lista, even x]) --adiciona impares a esquerda e pares a direita

main = do
    a <- readLn :: IO [Int]
    print $ splitints a