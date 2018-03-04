-- | Main Module
module Main where

-- | mult5 function
mult5 :: Int -> Bool
mult5 x = x `mod` 5 == 0

-- | Main function
main = do
    print (mult5 5)
    print (mult5 7)