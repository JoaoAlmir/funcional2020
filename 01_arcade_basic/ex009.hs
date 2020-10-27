sublist:: Int -> Int -> [Int] -> [Int]
sublist num1 num2 lista
    |num1 > 0 && num2 > 0 = (take ((num2 + length lista)-(num1 + length lista)) (drop (num1 + length lista) lista))
    |num1 < 0 = (take (num2-(num1 + length lista)) (drop (num1 + length lista) lista))
    |num2 < 0 =(take ((num2 + length lista)-num1) (drop num1 lista))        
    |otherwise = (take (num2-num1) (drop num1 lista))
    
   main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c
