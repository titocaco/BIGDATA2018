-- | Main module
module Main where

-- | divisivel20 function
divisivel20 :: Int -> Bool
divisivel20 n = and [n `mod` x == 0 | x <- [1..20]]

-- | Main function
main = do
    print $ divisivel20 2432902008176640