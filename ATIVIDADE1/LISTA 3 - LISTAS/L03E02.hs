-- | Main module
module Main where

-- | projectEuler5 function
-- Applies the lcm (least common multiplier) to the two last elements of the list [1..20],
-- then with the previous element of the list and the result of the last iteration,
-- and keep this algorithm along the rest of the list.
projectEuler5 :: Integer
projectEuler5 = foldr1 lcm [1..20]

-- | Main function
main = do
    print $ projectEuler5