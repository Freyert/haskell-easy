module LongestPrefix (commonPrefix, longestPrefix) where
import Data.Foldable (Foldable(fold))



commonPrefix :: String -> String -> String ->  String
commonPrefix accum [] []  = accum
commonPrefix [] left [] = left
commonPrefix [] [] right = right
commonPrefix accum (leftHead:leftTail) (rightHead:rightTail) 
    | leftHead == rightHead = commonPrefix (accum ++ [leftHead]) leftTail rightTail
    | otherwise = accum
commonPrefix accum _  _ = accum

commonPrefixFold = commonPrefix []

longestPrefix :: [String] -> String
longestPrefix = foldr commonPrefixFold []