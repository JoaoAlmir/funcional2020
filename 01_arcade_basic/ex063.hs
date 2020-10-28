euler1' num = [x| x <- [1..(num-1)], (mod x 3 == 0) || (mod x 5 == 0)] --retorna lista de numeros divisiver por 3 ou 5 até num

euler1 num = foldl ((\acc x -> acc + x)) 0 (euler1' num) --soma todos os elementos da lista auxiliar

main = do
    a <- readLn :: IO Int
    print $ euler1 a