-- | Main module
module Main where

perAditiva :: Int -> Int
perAditiva p
    | p < 10 = 0
    | otherwise = 1 + perAditiva (somaDigitos p)
        where
            somaDigitos :: Int -> Int
            somaDigitos s = sum $ digitos s
                where
                    digitos :: Int -> [Int]
                    digitos d = [read [x] | x <- show d]

-- | Main function
main = do
    print $ perAditiva 5473