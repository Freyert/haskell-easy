module RomanNumeralsSpec (spec) where
    
import Test.Hspec
import RomanNumerals

spec :: Spec
spec = do
    describe "convert roman numerals to base 10" $ do
        it "I == 1"  $ do
            roman "I" `shouldBe` (1 :: Int)
        it "II == 2" $ do
            roman "II" `shouldBe` (2 :: Int)
        it "V == 5" $ do
            roman "V" `shouldBe` (5 :: Int)
        it "IV = 4" $ do
            roman "IV" `shouldBe` (4 :: Int)
        it "X = 10" $ do
            roman "X" `shouldBe` (10 :: Int)
        it "IX = 9" $ do
            roman "IX" `shouldBe` (9 :: Int) 
    

