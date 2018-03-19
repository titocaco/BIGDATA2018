-- | Main module
module Main where

    -- | pascalElem function
    pascalElem :: Int -> Int -> Int
    pascalElem x y = foldl (\a b -> (a * (x-b+1)) `div` b) 1 [1..y]

    -- | Main function
    main = do
        print $ pascalElem 5 3