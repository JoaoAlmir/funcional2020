sublist :: Int -> Int -> [Int] -> [Int]
sublist num1 num2 lista
    |num1 < 0 && num2 < 0 = (take ((num2 + length lista) - (num1 + length lista)) (drop (num1 + length lista) lista)) --caso os dois num sejam negativos (os numeros negativos viram a diferença entre o num e o tamanho da lista)
    |num1 < 0 = (take (num2 - (num1 + length lista)) (drop (num1 + length lista) lista)) --caso o num1 seja negativo
    |num2 < 0 = (take ((num2 + length lista) - num1) (drop num1 lista)) --caso o num2 seja negativo
    |otherwise = (take (num2 - num1) (drop num1 lista)) --caso os dois numeros sejam negativos

main = do
  begin <- readLn :: IO Int
  end <- readLn :: IO Int
  line <- getLine
  print $ sublist begin end [read x :: Int | x <- words line]