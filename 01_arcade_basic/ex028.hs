divide::[Int] -> Int -> ([Int],[Int])
divide lista num
    |num == 0 = ([],lista) --se numero for 0 adiciona o resto da lista na direita
    |lista == [] = ([],[]) 
    |otherwise = (take num lista,drop num lista) --se tiver num ativo adiciona na esquerda

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b