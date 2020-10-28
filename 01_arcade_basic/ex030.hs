uniao':: [Int] -> [Int] --auxiliar
uniao' lista
    |lista == [] = []
    |head lista `elem` tail lista = uniao' (tail lista) 
    |otherwise = head lista:uniao' (tail lista) --só adiciona se não for repetido

uniao:: [Int] -> [Int] -> [Int] 
uniao a b = uniao' (a++b) --chama auxiliar com duas listas juntas
    
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b