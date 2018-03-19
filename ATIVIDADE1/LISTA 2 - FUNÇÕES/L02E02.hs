-- | Main module
module Main where

    -- | tipoTriangulo function
    tipoTriangulo :: Int -> Int -> Int -> String
    tipoTriangulo a b c
        | a == b && a == c = "Equilateral"
        | a == b || a == c || b == c = "Isosceles"
        | otherwise = "Scalene"

    -- | Main function
    main = do
        print $ tipoTriangulo 3 4 5
        print $ tipoTriangulo 3 3 5
        print $ tipoTriangulo 3 3 3