-- | Main module
module Main where

-- | isLeap function
isLeap :: Int -> Bool
isLeap year = year `rem` 400 == 0 || year `rem` 4 == 0 && year `rem` 100 /= 0

-- | leapYears list
leapYears = [x | x <- [1..2018], isLeap x]

-- | Main function
main = do
    print leapYears