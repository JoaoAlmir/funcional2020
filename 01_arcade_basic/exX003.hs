--Incompleto
vetFib:: Int -> [Int]
vetFib num
    | num == 0 = [0]
    | num == 1 = [1]
    | num == 2 = [1]
    | otherwise = vetFib (num+(-2)):vetFib (num+(-1))

main = do
    a <- readLn :: IO Int
    print $ vetFib a