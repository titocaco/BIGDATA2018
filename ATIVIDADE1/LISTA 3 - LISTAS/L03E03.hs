-- | Main module
module Main where

-- | fibonacci function
fibonacci n = take n $ fibo 1 1
    where
        fibo x y = x:fibo y (x + y)

-- | Main function
main = do
    print $ fibonacci 10