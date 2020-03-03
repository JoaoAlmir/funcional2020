menorDeTres :: Int -> Int -> Int -> Int
menorDeTres x y z =
    if x < y && x < z
        then x
    else
        if y < z
            then y
        else z