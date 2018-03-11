-- | Main module
module Main where

-- | binCoeff function
binCoeff :: Int -> Int -> Int
binCoeff x y = foldl (\a b -> (a * (x-b+1)) `div` b) 1 [1..y]

-- | Main function
main = do
    print $ binCoeff 5 3