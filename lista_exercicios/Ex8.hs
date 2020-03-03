maior :: [Int] -> Int
maior lista = 
    if length lista == 1
        then head lista
    else if head lista < last lista
        then maior (tail lista)
    else
        maior(init lista)