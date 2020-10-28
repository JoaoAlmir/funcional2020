listacc' lista num --auxiliar
    |lista == [] = []
    |length lista < 2 = [num]
    |otherwise = num:listacc' (tail lista) (num + lista !! 1) --adiciona numero na cabeça e chama recursivamente a cauda com o numero com o proximo somado

listacc lista = listacc' lista (head lista) --chama auxiliar com lista e num sendo a cabeça da lista


main = do
    a <- readLn :: IO [Int]
    print $ listacc a