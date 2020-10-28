gangorra:: Int -> Int -> Int -> Int -> Int

gangorra n1 n2 n3 n4
    |n1 * n2 == n3 * n4 = 0 --se forem pesos iguais
    |n1 * n2 > n3 * n4 = -1 --se peso de n1 e n2 por maior que n3 e n4
    |otherwise = 1 --se peso de n3 e n4 por maior que n1 e n2
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d
