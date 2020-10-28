inserir num lista
    |lista == [] = [num]
    |head lista > num = num:lista -- se achar uma cabeça maior adiciona o num antes
    |otherwise = (head lista):inserir num (tail lista)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b