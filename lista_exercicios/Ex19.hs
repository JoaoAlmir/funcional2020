divide::[Int] -> Int -> ([Int],[Int])
divide lista num
    |num == 0 = ([],lista)
    |lista == [] = ([],[])
    |otherwise = (take num lista,drop num lista)