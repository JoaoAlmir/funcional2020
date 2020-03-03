perfeito :: Int -> Bool
perfeito num = elem(num)([x*x| x <- [1..1000]])