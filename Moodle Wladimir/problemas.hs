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

{-insertSort:: [Int] -> [Int]
insertSort lista
    |lista == [] = []
    |
-}

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

intercala :: a -> [a] -> [a]
intercala el lista
    |length lista < 1 = lista --se tiver tamanho 1 para e coloca ultimo
    |otherwise = head lista : el : intercala el (tail lista)

