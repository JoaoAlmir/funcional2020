min3:: Int -> Int -> Int -> Int
min3 a b c
    |a+(-b) == 0 && b+(-c) == 0 = a -- se forem todos iguais
    |a+(-b) < 0 && a+(-c) < 0 = a --se difereça de A e B e A e C forem negativo
    |b+(-a) < 0 && b+(-c) < 0 = b --se diferença de B e A e B e C forem negativos
    |otherwise = c
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ min3 a b c
