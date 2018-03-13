-- | Main module
module Main where

-- | fibonacci function
fibonacci x y = x:fibonacci y (x + y)

-- | menor4M function
menor4M = sum $ takeWhile (< 4000000) $ fibonacci 1 1

-- | Main function
main = do
    print $ menor4M