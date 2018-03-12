-- | Main module
module Main where

digitos :: Int -> [Int]
digitos d = [read [x] | x <- show d]

somaDigitos :: Int -> Int
somaDigitos = sum . digitos

-- | Main function
main = do
    print $ somaDigitos 477