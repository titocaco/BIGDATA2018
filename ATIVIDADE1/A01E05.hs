-- | Main module
module Main where

-- | verif function
verif :: Int -> Bool
verif x = x < -1 || x > 1 && x `mod` 2 == 0

-- | Main function
main = do
    print (verif (-3))
    print (verif 4)
    print (verif 1)