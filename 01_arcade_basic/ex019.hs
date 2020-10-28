frequencia:: Int -> [Int] -> Int --conta quantas vezes num ocorre
frequencia num lista
    |lista == [] = 0
    |head lista == num = 1 + frequencia num (tail lista) --soma1 caso a cabeça seja igual num e chama recursivamente a cauda
    |otherwise = frequencia num (tail lista) --chama recursivamente a cauda sem somar

unico num lista
    |frequencia num lista == 1 = True --chama função frequencia e retorna true se for exatamente 1
    |otherwise = False

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b