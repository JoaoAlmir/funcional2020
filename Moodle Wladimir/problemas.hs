import Data.Char(isLetter)

remove:: Int ->[Int] -> [Int]   --remove todas as ocorrencias de num na lista
remove num lista 
    |lista == [] = [] --caso base
    |head lista == num = remove num (tail lista) -- se encontrar num, ignora e chama função com cauda
    |otherwise = [head lista] ++ remove num (tail lista)  -- caso não ocorra adiciona cabeça



inserir:: Int ->[Int] -> [Int] --insere num em lista ordenada e permanece ordenada
inserir num lista
    |lista == [] = []
    |head lista > num = [num] ++ lista -- se encontrar uma cabeça maior insere num
    |otherwise = [head lista] ++ inserir num (tail lista)



subconjuntos:: [Int] -> [Int] -> Bool -- observa se todos da lista 1 estão na lista 2
subconjuntos lista1 lista2
    |lista1 == [] = True
    |(head lista1 `elem` lista2) == False = False -- se a cabeça da lista 1 não estiver presente em lista 2 retorna falso
    |otherwise = subconjuntos (tail lista1) lista2 



somaConsecutivos:: [Int] -> [Int] --divide lista em pares e faz nova lista de soma de pares
somaConsecutivos lista
    |length lista == 1 = [] --termina se tam da lista = 1
    |otherwise = [(head lista) + lista !! 1] ++ somaConsecutivos (tail lista) --soma cabeça e indice 1 da lista e inclui em nova lista



filtrandoCaudas:: [[Int]] -> [[Int]] --tira cabeça de cada lista de lista
filtrandoCaudas lista
    |lista == [] = []
    |otherwise = [tail (head lista)] ++ filtrandoCaudas (tail lista) --soma cauda da cabeça da lista de lista e chama recursivamente



frequencia:: Int -> [Int] -> Int --quantas vezes num aparece na lista
frequencia num lista
    |lista == [] = 0
    |head lista == num = 1 + frequencia (num) (tail lista) -- se cabeça for igual num, soma 1 e chama recursivamente
    |otherwise = frequencia num (tail lista)



temLetraOuDigito:: String -> Bool -- true se tiver letra falso caso contrario
temLetraOuDigito str
    |str == [] = False
    |isLetter (head str) = True -- se a cabeça for letra retorna true
    |otherwise = temLetraOuDigito (tail str)



noIntervalo:: Int -> Int -> [Int] -> [Int] -- retorna numeros maiores que num 1 e menores que num 2 da lista
noIntervalo num1 num2 lista
    |lista == [] = []
    |head lista >= num1 && head lista <= num2 = head lista:noIntervalo num1 num2 (tail lista) -- se cabeça for maior ou igual que num1 e menor ou igual a num2 insere no retorno 
    |otherwise = noIntervalo num1 num2 (tail lista)



intercala :: a -> [a] -> [a] --coloca el entre cada elemento da lista
intercala el lista
    |length lista < 1 = lista --se tiver tamanho 1 para e coloca ultimo
    |otherwise = head lista : el : intercala el (tail lista)



metadePares::[Integer] -> [Integer] -- retorna nova lista com pares divididos por 2
metadePares lista
    |lista == [] = []
    |head lista `mod` 2 == 0 = head lista `div` 2:metadePares (tail lista) -- se encontrar um par insere cabeça dividido por 2 e chama recursivo
    |otherwise = metadePares (tail lista)



insert::Ord a => a -> [a] -> [a] -- insere num em uma lista ordenada e continua ordenada
insert num lista
    |lista == [] = []
    |head lista > num = num:lista -- se encontrar uma cabeça maior que o num, insere num
    |otherwise = head lista: insert num (tail lista)




maiorSalto'::[Integer] -> Integer -> Integer --auxiliar da questão maiorSalto
maiorSalto' lista num
    |length lista < 2 = num
    |num < abs( (head lista) - lista !! 1 ) = maiorSalto' (tail lista) (abs( (head lista) - lista !! 1 )) --pega indice 0 e 1, pega valor absoluto da subtração e se for menor que num chama função recursiva com novo num
    |otherwise = maiorSalto' (tail lista) (num)

maiorSalto::[Integer] -> Integer --vê a maior diferença entre 2 elementos adjacentes
maiorSalto lista = maiorSalto' lista 0 -- chama função auxiliar com o num = 0




remdups::[Int] -> [Int]  --remove elementos repetidos
remdups lista
    |length lista < 2 = lista
    |head lista == lista !! 1 = remdups (tail lista) -- se a cabeça for igual ao indice 1 ignora e chama recursivo com cauda
    |otherwise = head lista:remdups (tail lista)  -- adiciona cabeça




contaIguais:: [Int] -> Int --conta quantidade de igual a partir da cabeça
contaIguais lista
    |length lista < 2 = 1
    |head lista == lista !! 1 = 1 + contaIguais (tail lista) -- se o indice 0 e 1 for igual adiciona 1
    |otherwise = 1




pontos' :: [Int] -> Int -> Int -- função auxiliar de pontos
pontos' lista aux
    |lista == [] = aux
    |contador > aux = pontos' (tail lista) contador -- se o contador for maior que o auxiliar guarda ele
    |otherwise = pontos' (tail lista) aux
    where contador = contaIguais(lista)

pontos:: [Int] -> Int -- Retorna maior numero de elementos repetidos seguidos
pontos lista = pontos' lista 0 --chama função auxiliar com 0 no aux





concatenaFold :: [[a]] -> [a] -- recebe lista de lista e retorna lista
concatenaFold = foldl (++) [] --adiciona todos os elementos a partir da esquerda




inverteFold:: [a] -> [a]
inverteFold = foldr (\x acc -> acc ++ [x] ) []  --inverte a lista
                                                --como é foldr, ele inicia pela direita da lista, inserindo do final ao começo



paridadeFold :: [Bool] -> Bool
paridadeFold lista
    |mod (foldr (\x acc -> if(x == True) then acc+1 else acc) 0 lista) 2 == 0 = True --foldr vai retornar o acc que é o contador e vai retornar True se o acc for par e False se for impar
    |otherwise = False




mapFold :: (a->b) -> [a] -> [b]
mapFold f lista = foldr (\x acc-> [f(x)] ++ acc) [] lista --usa função em cada elemento parecido com map
