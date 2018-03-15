-- | Main module
module Main where

-- | concatenated string
conca = concStr "testing" "concatenation"
    where
        concStr :: String -> String -> String
        concStr a b = concat [a, " ", b]

-- | Main function
main = do
    print conca