quadperf :: Int -> Bool
quadperf num = elem(num)([x*x| x <- [1..1000]]) --observa se ele é elemento da lista de de numeros quadrados

main = do
    a <- readLn :: IO Int
    print $ quadperf a