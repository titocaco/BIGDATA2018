-- | Main module
module Main where

-- | isLeap function
isLeap :: Int -> Bool
isLeap year = year `rem` 400 == 0 || year `rem` 4 == 0 && year `rem` 100 /= 0

-- | leap10fst list
leap10fst = take 10 [x | x <- [1..2018], isLeap x]

-- | Main function
main = do
    print leap10fst