countNeg:: [Int] -> Int
countNeg lista
    | lista == [] = 0
    | head lista > 0 = 0 + countNeg (tail lista)
    | otherwise = 1 + countNeg (tail lista)

main = do
    a <- readLn :: IO [Int]
    print $ countNeg a