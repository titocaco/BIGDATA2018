-- | Main module
module Main where

    -- ehTriangulo function
    ehTriangulo :: Int -> Int -> Int -> Bool
    ehTriangulo a b c = a+b > c && a+c > b && b+c > a

    -- | Main function
    main = do
        print $ ehTriangulo 3 4 5
        print $ ehTriangulo 3 4 10