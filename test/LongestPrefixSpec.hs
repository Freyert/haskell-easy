module LongestPrefixSpec (spec) where
    
import Test.Hspec
import LongestPrefix

spec :: Spec
spec = do
    describe "commonPrefix" $ do
        it "flower, flow" $ do
            commonPrefix [] "flower" "flow"  `shouldBe` "flow"
        it "flower, flight" $ do
            commonPrefix [] "flower" "flight"  `shouldBe` "fl"
    describe "longestCommonPrefix" $ do
        it "flower, flow, flight" $ do
            longestPrefix ["flower", "flow", "flight"] `shouldBe` "fl"
    

