import Data.Char(toUpper)
import Data.Char(toLower)


titulo':: String -> String
titulo' lista
    |lista == [] = []
    |head lista == ' ' = ' ':toUpper(lista !! 1):titulo' (tail (tail lista))
    |otherwise =  toLower(head lista):titulo' (tail lista)

titulo:: String -> String
titulo lista =  toUpper(head lista):tail(titulo' lista)