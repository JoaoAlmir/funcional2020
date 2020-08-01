inserir:: Int -> [Int] -> [Int]
inserir num lista
    |lista == [] = [num]
    |head lista > num = num:lista
    |otherwise = head lista:inserir num (tail lista)