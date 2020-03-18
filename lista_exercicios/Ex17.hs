alter:: Int -> [Int]
alter num 
    | num == 1 = [1,(-1)]
    | num > 0 = alter (num*(-1)) ++ [num*(-1)]
    | otherwise = alter ((num*(-1))+(-1)) ++ [num*(-1)]
