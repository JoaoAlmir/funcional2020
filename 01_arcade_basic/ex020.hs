maioresQue num lista
    |lista == [] = []
    |head lista > num = (head lista):maioresQue num (tail lista) -- se a cabeça for maior que num adiciona e chama recursivamente
    |otherwise = maioresQue num (tail lista) -- se não for maior só chama recursivamente sem adicionar cabeça

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b