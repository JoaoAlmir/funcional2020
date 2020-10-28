reverso lista
    |lista == [] = []
    |otherwise = last lista: reverso (init lista) --chama recursivamente adicionando o last e retornando com init lista

main = do
    a <- readLn :: IO [Int]
    print $ reverso a