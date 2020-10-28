fib num
    |num == 0 = 0 --casos base
    |num == 1 = 1
    |otherwise = fib (num-1) + fib (num-2) --chama recursivamente com num -1 somando num -2

main = do
    a <- readLn :: IO Int
    print $ fib a