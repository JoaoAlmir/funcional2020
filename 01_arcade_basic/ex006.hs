interior:: [Int] -> [Int]

interior [] = []
interior lista = init(tail(lista))