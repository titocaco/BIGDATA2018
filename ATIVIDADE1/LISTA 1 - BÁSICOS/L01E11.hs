-- | Main module
module Main where

-- | leapHalfs tuple
leapHalfs = (take leapsHalfSize leaps, drop leapsHalfSize leaps)
    where
        leapsHalfSize = length(leaps) `div` 2
        leaps = [x | x <- [1..2018], isLeap x]
            where
                isLeap :: Int -> Bool
                isLeap year =   year `rem` 400 == 0 || 
                                year `rem` 4 == 0 && year `rem` 100 /= 0

-- | Main function
main = do
    print leapHalfs