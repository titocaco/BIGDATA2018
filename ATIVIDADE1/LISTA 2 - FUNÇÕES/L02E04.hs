-- | Main module
module Main where

    -- | isPrime function
    {-
        1. creates a list with the rest of the division of n by every 
        element in [2.. n `quot` 2];
        2. check if the created list contains the element 0;
        3. if the list contains an element 0, then n is NOT prime.
    -}
    isPrime :: (Integral a) => a -> Bool
    isPrime n
        | n <= 1 = False
        | otherwise = not $ elem 0 (map (mod n) [2 .. n `quot` 2])

    -- | Main function
    main = do
        print $ isPrime 1
        print $ isPrime 2
        print $ isPrime 3
        print $ isPrime 4
        print $ isPrime 5
        print $ isPrime 109
        print $ isPrime 342141511