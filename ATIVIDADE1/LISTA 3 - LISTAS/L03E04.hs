-- | Main module
module Main where

    -- | menor4M function
    menor4M = sum $ takeWhile (<= 4000000) $ fibonacci 1 1
        where
            fibonacci :: Int -> Int -> [Int]
            fibonacci x y = x:fibonacci y (x + y)

    -- | Main function
    main = do
        print $ menor4M