import Data.Char(toUpper)

upper:: String -> String
upper lista = map toUpper lista --coloca todas as letras em maiusculo

main = do
    a <- getLine
    print $ upper a