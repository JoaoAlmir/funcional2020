interior:: [Int] -> [Int]

interior [] = []
interior lista = init(tail(lista)) --chama o init e tail para tirar head e last

main = do
    a <- readLn :: IO [Int]
    print $ interior a
