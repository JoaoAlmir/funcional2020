frequencia :: Int -> [Int] -> Int
frequencia x [] = 0

frequencia x lista = 
    if head lista == x
        then 1 + (frequencia x (tail lista))
    else
        frequencia x (tail lista)