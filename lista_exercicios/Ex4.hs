fibonacci :: Int -> Int
fibonacci x =
    if x < 3
        then 1
    else
        fibonacci(x-1) + fibonacci(x-2)
    