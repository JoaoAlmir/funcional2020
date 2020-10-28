paridade' lista cont -- lista auxiliar t = contador de true, f = contador de false 
    |lista == [] = cont
    |head lista == True = paridade' (tail lista) (cont+1) --se encontarr um true adiciona 1 no contador
    |otherwise = paridade' (tail lista) (cont)

paridade lista  
    |(paridade' lista 0) `mod` 2 == 0 = False --chama auxiliar e retorna true caso seja impar
    |otherwise = True

main = do
    a <- readLn :: IO [Bool]
    print $ paridade a