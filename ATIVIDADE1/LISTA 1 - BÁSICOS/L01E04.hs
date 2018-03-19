-- | Main module
module Main where

    -- | mult35 function
    mult35 :: Int -> Bool
    mult35 x = x `mod` 3 == 0 && x `mod` 5 == 0

    -- | Main function
    main = do
        print $ mult35 15
        print $ mult35 6
        print $ mult35 10