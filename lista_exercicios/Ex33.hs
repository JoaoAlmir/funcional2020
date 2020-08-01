

primo':: Int -> [Int] ->Bool
primo' num seq
    |head seq >= num = True
    |num `mod` head seq == 0 = False
    |otherwise = primo' num (tail seq)

primo:: Int -> Bool
primo num = primo' num [2..]