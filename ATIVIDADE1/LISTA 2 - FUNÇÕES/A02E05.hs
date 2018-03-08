-- | Main module
module Main where

-- | Package imports
import Data.Char

-- | string2list function
string2list s = map digitToInt s

-- | sumDigits function
sumDigits sd = sum $ string2list sd

-- | Main function
main = do
    print $ sumDigits "01234"