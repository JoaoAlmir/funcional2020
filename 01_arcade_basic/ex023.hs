corpo lista
    |lista == [] = []
    |otherwise = init lista --retorna inicio da lista sem ultimo(last)

main = do
    a <- readLn :: IO [Int]
    print $ corpo a