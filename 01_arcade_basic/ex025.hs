remove_um:: Int -> [Int] -> [Int] --remove exatamente um num da lista
remove_um num lista
    |lista == [] = []
    |head lista /= minimum lista = head lista:remove_um num (tail lista)
    |otherwise = tail lista

menores':: Int -> [Int] -> [Int] -- função auxiliar que usa remove_um
menores' num lista
    |num == 0 = []
    |otherwise = minimum lista: menores'(num-1) (remove_um (minimum lista) lista) -- adiciona menores e remove um dele da lista

menores:: Int -> [Int] -> [Int]
menores num lista
    |lista == [] = []
    |num == 0 = []
    |head lista `elem` menores' num lista = head lista:menores (num-1) (tail lista) -- se a cabeça pertencer a lista auxiliar adiciona e remove 1 da lista
    |otherwise =  menores num (tail lista) --se não só chama recursivamente a cauda
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b