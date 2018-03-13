-- | Main module
module Main where

-- | projectEuler5 function
projectEuler5 :: Integer
projectEuler5 = foldr1 lcm [1..20]

-- | Main function
main = do
    print $ projectEuler5