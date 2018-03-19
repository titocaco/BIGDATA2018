-- | Main module
module Main where

    -- | divisivel20 function
    divisivel20 :: Integer -> Bool
    divisivel20 n = n `mod` base == 0
        where
            base = foldr1 lcm [1..20]

    -- | Main function
    main = do
        print $ divisivel20 2432902008176640
        print $ divisivel20 1337
        print $ divisivel20 232792560