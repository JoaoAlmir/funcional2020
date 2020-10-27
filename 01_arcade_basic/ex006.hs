interior:: [Int] -> [Int]

interior [] = []
interior lista = init(tail(lista))

main = do
    a <- readLn :: IO [Int]
    print $ interior a
