-- | Main module
module Main where

-- | leapYears list
leapYears = [x | x <- [1..2018], isLeap x]
    where
        isLeap :: Int -> Bool
        isLeap year =   year `rem` 400 == 0 ||
                        year `rem` 4 == 0 && year `rem` 100 /= 0

-- | Main function
main = do
    print leapYears