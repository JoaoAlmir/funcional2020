--Incompleto
intercal:: [Int] -> [Int] -> [Int]
intercal [] [] = []
intercal [] b = b
intercal a [] = a

intecal a b = intecal (tail a tail b) ++ [head a, head b]