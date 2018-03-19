-- | Main module
module Main where

    -- | somaDigitos function
    somaDigitos :: Int -> Int
    somaDigitos s = sum $ digitos s
        where
            digitos :: Int -> [Int]
            digitos d = [read [x] | x <- show d]

    -- | Main function
    main = do
        print $ somaDigitos 477