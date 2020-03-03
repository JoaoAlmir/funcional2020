splitints :: [Int] -> ([Int],[Int])
splitints lista = ([x| x <- lista, odd x ],[x| x <- lista, even x])