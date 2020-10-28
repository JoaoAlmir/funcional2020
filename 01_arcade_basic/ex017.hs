maior' num lista --func auxiliar
    |lista == [] = num
    |head lista > num = maior' (head lista) (tail lista) --se o o head for maior que o num salva
    |otherwise = maior' num (tail lista)

maior lista = maior' (head lista) lista --chama func auxiliar

main = do
    a <- readLn :: IO [Int]
    print $ maior a