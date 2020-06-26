intercal:: [Int] -> [Int] -> [Int]
intercal [] [] = []
intercal [] b = b
intercal a [] = a

intercal a b = [head a, head b] ++ intercal (tail a) (tail b)