-- | Main module
module Main where

    -- | tupsin function
    tupsin :: Double -> (Double, Double)
    tupsin x = ((-sqrt (1 - cos(x))/2), (sqrt (1 - cos(x))/2))

    -- | Main function
    main = do
        print $ tupsin 1
        print $ tupsin 15
        print $ tupsin 35
        print $ tupsin 47.13