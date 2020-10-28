isPalind:: String -> Bool
isPalind lista
    |lista == reverse lista = True --se lista for igual a ela invertida
    |otherwise = False

main = do
    a <- getLine
    print $ isPalind a