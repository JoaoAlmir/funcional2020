rotEsq :: Int -> [a] -> [a]
rotEsq num lista = take (length lista)(drop num(cycle (lista)))