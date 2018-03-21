-- | Main module
module Main where

    -- | Package imports
    import Data.Char

    -- | string2list function
    string2list :: String -> [Int]
    string2list s = map digitToInt s

    -- | Main function
    main = do
        print $ string2list "0123456789"