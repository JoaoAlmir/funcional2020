min2 :: Int -> Int -> Int
min2 a b
    |a+(-b) == 0 = a -- se forem iguais
    |a+(-b) > 0 = b -- se a for maior
    |otherwise = a -- se b for maior
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b
