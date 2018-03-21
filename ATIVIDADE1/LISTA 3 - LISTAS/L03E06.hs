-- | Main module
module Main where

    -- | collatz function
    collatz :: Int -> Int
    collatz x
        | x `mod` 2 == 0 = x `div` 2
        | otherwise = 3 * x + 1

    -- | Main function
    main = do
        print $ collatz 6