module PalindromeNumberSpec (spec) where
    
import Test.Hspec
import PalindromeNumber

spec :: Spec
spec = do
    describe "check if a number is a palindrome or not" $ do
        it "121"  $ do
            palindromeNumber 121 `shouldBe` True
        it "-121" $ do
            palindromeNumber (-121) `shouldBe` False
        it "1001" $ do
            palindromeNumber 1001 `shouldBe` True