qsort [] = []
qsort lista = qsort menores ++ ((head lista) : qsort maiores) -- recursivamente coloca os menores na direita, cabeça no meio e maiores a direita
   where menores = [y | y <- (tail lista), y <= head lista]
         maiores = [y | y <- (tail lista), y > head lista]
main = do
    a <- readLn :: IO [Int]
    print $ qsort a