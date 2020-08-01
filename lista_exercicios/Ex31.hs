selec:: String -> [Int] -> String
selec string lista
    |lista == [] = []
    |otherwise = (string !! head lista):selec string (tail lista)