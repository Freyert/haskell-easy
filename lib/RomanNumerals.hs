module RomanNumerals (roman) where


sumNumerals :: Char -> (Char, Int) -> (Char, Int)
sumNumerals  'I' (prev, total)
    | prev == 'V' || prev == 'X' = ('I', total - 1)
    | otherwise = ('I', total + 1)
sumNumerals 'V' (_, total) = ('V', total + 5)
sumNumerals 'X' (_, total) = ('X', total + 10)
sumNumerals x (y, total) = (y, total)

roman :: [Char] -> Int
roman a = snd $ foldr sumNumerals ('*', 0) a
