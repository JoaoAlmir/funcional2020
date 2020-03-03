isPalind:: String -> Bool
isPalind lista =
    if lista == reverse lista
        then True
    else
        False