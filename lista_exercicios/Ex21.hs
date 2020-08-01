uniao':: [Int] -> [Int]
uniao' lista
    |lista == [] = []
    |head lista `elem` tail lista = uniao' (tail lista)
    |otherwise = head lista:uniao' (tail lista)

uniao:: [Int] -> [Int] -> [Int]
uniao a b = uniao' (a++b)
    