somaImpares:: [Int] -> Int

somaImpares lista
    |lista == [] = 0
    |(head lista) `mod` 2 == 0 = 0 + somaImpares (tail lista)
    |otherwise = head lista + somaImpares (tail lista)
    
main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a
