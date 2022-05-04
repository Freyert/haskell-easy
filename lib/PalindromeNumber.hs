module PalindromeNumber (palindromeNumber) where


reverseNumber :: (Int, Int) -> (Int, Int)
reverseNumber (x, rev)
    | x > rev = reverseNumber (x `div` 10, rev * 10 + mod x 10)
    | otherwise = (x, rev)

palindromeNumber :: Int -> Bool
palindromeNumber x
    | x < 0 || (mod x 10 == 0 && x /= 0) = False
    | otherwise = uncurry (==) y || (fst y == snd y `div` 10)
    where y = reverseNumber (x, 0)