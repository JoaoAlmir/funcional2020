rotDir:: Int -> String -> String

rotDir 0 str = str
rotDir num str = rotDir (num+(-1)) (last str:init str) --chama recursivamente diminuindo o numero e adicionando o ultimo no init

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b