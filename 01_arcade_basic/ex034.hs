ordenada lista
    |lista == [] = True
    |length lista < 2 = True --se acabar retorna verdadeiro
    |head lista > lista !! 1 = False -- se encontrar uma cabeça maior que o indice 1 retorna falso
    |otherwise = ordenada (tail lista) -- continua recursivo

main = do
    a <- readLn :: IO [Int]
    print $ ordenada a