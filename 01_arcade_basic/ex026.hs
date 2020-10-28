alter:: Int -> [Int]
alter num 
    | num == 1 = [1,(-1)] 
    | num > 0 = alter (num*(-1)) ++ [num*(-1)] --se o numero for positivo adiciona e inverte o sinal
    | otherwise = alter ((num*(-1))+(-1)) ++ [num*(-1)] --se o numero for negativo adiciona e inverte o sinal

main = do
    a <- readLn :: IO Int
    print $ alter a