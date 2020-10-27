pertence:: Int -> [Int] -> Bool
pertence num lista
    |lista == [] = False
    |head lista == num = True
    |otherwise = pertence num (tail lista)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b