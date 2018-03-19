-- | Main module
module Main where

    -- | div2d function
    div2d :: Integer -> Double
    div2d x = fromIntegral x / 2

    -- | Main function
    main = do
        print $ div2d 1
        print $ div2d 2
        print $ div2d 3