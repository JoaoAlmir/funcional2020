countNeg:: [Int] -> Int
countNeg lista
    | lista == [] = 0
    | head lista > 0 = 0 + countNeg (tail lista) --se for positivo não adiciona e chama recursivamente a cauda
    | otherwise = 1 + countNeg (tail lista)

main = do
    a <- readLn :: IO [Int]
    print $ countNeg a