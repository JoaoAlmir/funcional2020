menores:: Int -> [Int] -> [Int]
menores num lista = [x| x <- lista, x <= num]