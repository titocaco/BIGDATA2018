-- | Main module
module Main where

-- | isLeap function
isLeap :: Int -> Bool
isLeap year = year `rem` 400 == 0 || year `rem` 4 == 0 && year `rem` 100 /= 0

-- | leaps list
leaps = [x | x <- [1..2018], isLeap x]
leapsHalfSize = length(leaps) `div` 2

-- | leapHalfs tuple
leapHalfs = (take leapsHalfSize leaps, drop leapsHalfSize leaps)

-- | Main function
main = do
    print leapHalfs