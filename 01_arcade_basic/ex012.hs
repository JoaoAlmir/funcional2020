fatorial:: Int -> Int
fatorial num
    |num <= 0 = 1
    |otherwise = fatorial num+(-1) --chama recursivamente decrementando o num
    
main = do
    a <- readLn :: IO Int
    print $ fatorial a
