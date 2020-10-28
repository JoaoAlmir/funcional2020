rotEsq :: Int -> [a] -> [a]
rotEsq num lista = take (length lista)(drop num(cycle (lista))) -- cicla a lista e pega a mesma quantidade de numeros

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b