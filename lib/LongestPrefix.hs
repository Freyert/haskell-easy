module LongestPrefix (commonPrefix) where



commonPrefix :: String -> String -> String -> String
commonPrefix [] [] accum = accum
commonPrefix (aHead:aTail) (bHead:bTail) accum
    | aHead == bHead = aHead : accum ++ commonPrefix aTail bTail accum
    | otherwise = accum
commonPrefix _ _ accum = accum

longestPrefix :: [String] -> String
longestPrefix (head:next:tail) = commonPrefix head next [] -- head, the next string, and an accumulator ([])
longestPrefix _ = []