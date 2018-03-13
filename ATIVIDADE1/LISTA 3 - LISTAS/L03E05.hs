-- | Main module
module Main where

-- | dotProd function
dotProd :: Num a => [a] -> [a] -> a
dotProd x y = foldl1 (+) $ zipWith (*) x y

-- | Main function
main = do
    print $ zipWith (*) [-1,3,2] [2,1,3]
    print $ dotProd [-1,3,2] [2,1,3]