-- | Main module
module Main where

digitos :: Int -> [Int]
digitos d = [read [x] | x <- show d]

somaDigitos :: Int -> Int
somaDigitos s = sum $ digitos s

listaSomas :: Int -> [Int]
listaSomas n
    | n < 10 = [n]
    | otherwise = n: listaSomas (somaDigitos n)

perAditiva :: Int -> Int
perAditiva p
    | p < 10 = 0
    | otherwise = 1 + perAditiva (somaDigitos p)

-- | Main function
main = do
    print 477
    print $ digitos 477
    print $ somaDigitos 477
    print $ listaSomas 477
    print $ perAditiva 477