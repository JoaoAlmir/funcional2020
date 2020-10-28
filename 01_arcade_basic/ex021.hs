concatena l1 l2
    |l1 == [] && l2 == [] = []
    |l1 == [] = (head l2): concatena l1 (tail l2) --se acabar da primeira lista adiciona a segunda e chama recursivamente
    |otherwise = (head l1): concatena (tail l1) l2 -- se tiver as duas adiciona a primeira e chama recursivo
    
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b