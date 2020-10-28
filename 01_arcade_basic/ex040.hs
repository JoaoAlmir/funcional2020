import Data.Char(toUpper)
import Data.Char(toLower)


titulo':: String -> String --auxiliar
titulo' lista
    |lista == [] = []
    |head lista == ' ' = ' ':toUpper(lista !! 1):titulo' (tail (tail lista)) --quando encontrar espaço adiciona maiuculo na proxima letra
    |otherwise =  toLower(head lista):titulo' (tail lista) -- se não deixa maiusculo

titulo:: String -> String
titulo lista =  toUpper(head lista):tail(titulo' lista) --coloca primeira letra em maisculo e chama função auxiliar

main = do
    a <- getLine
    print $ titulo a