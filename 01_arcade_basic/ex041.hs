selec:: String -> [Int] -> String
selec string lista
    |lista == [] = []
    |otherwise = (string !! head lista):selec string (tail lista) --adiciona o indice da lista e chama recursivo
main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b