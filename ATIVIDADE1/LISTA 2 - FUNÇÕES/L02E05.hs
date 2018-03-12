-- | Main module
module Main where

-- | digitos function
digitos :: Int -> [Int]
digitos d = [read [x] | x <- show d]

-- | somaDigitos function
somaDigitos :: Int -> Int
somaDigitos s = sum $ digitos s

-- | Main function
main = do
    print $ somaDigitos 477