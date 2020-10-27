min2 :: Int -> Int -> Int
min2 a b
    |a+(-b) == 0 = a
    |a+(-b) > 0 = b
    |otherwise = a
    
   main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b
