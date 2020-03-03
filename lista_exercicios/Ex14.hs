corpo :: [Int] -> [Int]
--corpo lista = reverse . drop 1 . reverse $ lista
corpo lista = reverse (drop 1(reverse lista))