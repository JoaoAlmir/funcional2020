max3:: Int -> Int -> Int -> Int
max3 a b c
    | a > b && a > c = a --se o a for maior
    | b > c = b -- se o b for maior 
    | otherwise = c -- se o c for maior

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c