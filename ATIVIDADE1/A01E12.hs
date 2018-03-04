-- | Main module
module Main where

-- | concStr function
concStr :: String -> String -> String
concStr a b = concat [a, " ", b]

-- | concatenated string
conca = concStr "testing" "concatenation"

-- | Main function
main = do
    print conca