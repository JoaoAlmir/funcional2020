tails lista
    |lista == [] = [[]] --se for vazia adiciona lista de lista vazia
    |otherwise = lista: tails (tail lista) -- se tiver elemento adiciona lista e chama cauda recursivamente

main = do
    a <- readLn :: IO [Int]
    print $ tails a