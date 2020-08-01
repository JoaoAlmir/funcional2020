remove_um:: Int -> [Int] -> [Int]
remove_um num lista
    |lista == [] = []
    |head lista /= minimum lista = head lista:remove_um num (tail lista)
    |otherwise = tail lista

menores':: Int -> [Int] -> [Int]
menores' num lista
    |num == 0 = []
    |otherwise = minimum lista: menores'(num-1) (remove_um (minimum lista) lista) 

menores:: Int -> [Int] -> [Int]
menores num lista
    |num == 0 = []
    |head lista `elem` menores' num lista = head lista:menores (num-1) (tail lista)
    |otherwise =  menores num (tail lista)
    
