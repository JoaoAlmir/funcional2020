isSorted::[Int] -> Bool
isSorted lista
    |length lista <= 1 = True 
    |head lista > lista !! 1 = False
    |otherwise = isSorted (tail lista)