-- | Main module
module Main where

-- | mult3 function
mult3 :: Int -> Bool
mult3 x = x `mod` 3 == 0

-- | Main function
main = do
    print $ mult3 3
    print $ mult3 4