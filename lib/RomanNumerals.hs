module RomanNumerals (roman) where


sumNumerals :: Char -> (Char, Int) -> (Char, Int)
sumNumerals  'I' (prev, total)
    | prev == 'V' || prev == 'X' = ('I', total - 1)
    | otherwise = ('I', total + 1)
sumNumerals 'V' (_, total) = ('V', total + 5)
sumNumerals 'X' (prev, total)
    | prev == 'L' || prev == 'C' = ('X', total - 10)
    | otherwise = ('X', total + 10)
sumNumerals 'L' (_, total) = ('L', total + 50)
sumNumerals 'C' (prev, total)
    | prev == 'D' || prev == 'M' = ('C', total - 100)
    | otherwise = ('C', total + 100)
sumNumerals 'D' (_, total) = ('D', total + 500)
sumNumerals 'M' (_, total) = ('M', total + 1000)
sumNumerals x (y, total) = (y, total)

roman :: [Char] -> Int
roman a = snd $ foldr sumNumerals ('*', 0) a
