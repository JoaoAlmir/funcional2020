gangorra:: Int -> Int -> Int -> Int -> Int

gangorra n1 n2 n3 n4
    |n1 * n2 == n3 * n4 = 0
    |n1 * n2 > n3 * n4 = -1
    |otherwise = 1