soma:: Int -> Int -> Int
soma x y = x + y --soma os dois

main = do
    line1 <- getLine
    line2 <- getLine
    let x = read line1 :: Int
    let y = read line2 :: Int
    print $ soma x y
