iguais:: Int -> Int -> Int -> Int
iguais a b c
    | a == b && b == c = 3 -- se forem 3 iguais
    | a == b || b == c || a == c = 2 -- se tiverem 2 iguais
    | otherwise = 0 --nenhum igual

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c