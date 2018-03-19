-- | Main module
module Main where

    -- | etiope function
    etiope :: Int -> Int -> Int
    etiope x y
        | x == 1 = y
        | even x = etiope (x `div` 2) (y * 2)
        | otherwise = y + (etiope (x `div` 2) (y * 2))

    -- | Main function
    main = do
        print $ etiope 31 47