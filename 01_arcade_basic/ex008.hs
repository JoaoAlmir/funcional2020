gangorra:: Int -> Int -> Int -> Int -> Int

gangorra n1 n2 n3 n4
    |n1 * n2 == n3 * n4 = 0
    |n1 * n2 > n3 * n4 = -1
    |otherwise = 1
    
   main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d
