sequencia:: Int -> Int -> [Int]
sequencia vezes inicio = take vezes[(inicio)..] -- pega n vezes a partir do inicio ao infinito

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b