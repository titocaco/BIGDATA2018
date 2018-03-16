-- | Main module
module Main where

-- | collatzLen function
collatzLen n = length $ collatzList n
    where
        collatzList n
            | n < 1 = error "Use integer numbers equals (or above) 1"
            | n == 1 = [n]
            | otherwise = n:collatzList (collatz n)
                where
                    collatz :: Integer -> Integer
                    collatz x
                        | x `mod` 2 == 0 = x `div` 2
                        | otherwise = 3 * x + 1

-- | maiorCollatz function
maiorCollatz = maxCollatz [(x, collatzLen x) | x <- [1..100000]]
    where
        maxCollatz :: Ord a => [(t, a)] -> (t, a)
        maxCollatz []     = error "maximum of empty list"
        maxCollatz (x:xs) = maxTail x xs
            where
                maxTail currentMax [] = currentMax
                maxTail (m, n) (p:ps)
                    | n < (snd p) = maxTail p ps
                    | otherwise   = maxTail (m, n) ps

-- | Main function
main = do
    print maiorCollatz