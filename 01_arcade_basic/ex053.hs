deletee:: Int -> [Int] -> [Int]
deletee num lista
    |lista == [] = []
    |head lista /= minimum lista = head lista:deletee num (tail lista) -- se head não for minimo continua
    |otherwise = tail lista  -- quando encontrar ignora cabeça e pega cauda

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ deletee a b