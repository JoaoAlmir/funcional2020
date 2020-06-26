max3:: Int -> Int -> Int -> Int
max3 a b c
    | a > b && a > c = a
    | b > c = b
    | otherwise = c

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c