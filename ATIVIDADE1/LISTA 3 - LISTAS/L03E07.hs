-- | Main module
module Main where

-- | collatz function
collatz :: Integer -> Integer
collatz x
    | x `mod` 2 == 0 = x `div` 2
    | otherwise = 3 * x + 1

-- | collatzList function
collatzList n
    | n < 1 = error "Use integer numbers equals (or above) 1"
    | n == 1 = [n]
    | otherwise = n:collatzList (collatz n)

-- | collatzLen function
collatzLen n = length $ collatzList n

-- | Main function
main = do
    print $ collatzLen 10