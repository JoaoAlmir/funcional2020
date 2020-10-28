
unique:: [Int] -> [Int]
unique lista
    |lista == [] = []
    |head lista `elem` tail lista = unique (tail lista) --se a cabeça da lista estiver presente na cauda chama recursivamente sem adicionar
    |otherwise = (head lista):unique (tail lista) --adiciona cabeça caso não esteja no resto da lista


main = do
    a <- readLn :: IO [Int]
    print $ unique a