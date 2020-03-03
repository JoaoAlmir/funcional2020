maioresQue:: Int -> [Int] -> [Int]
maioresQue num lista = [x| x <- lista, x > num]
