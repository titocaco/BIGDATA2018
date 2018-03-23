{-
    Aula:       3
    Exercício:  4
    Enunciado:  Implemente a distância de Minkowski com suas
                variações Manhattan, Euclidiana e Chebyshev.
-}

-- | Main module
module Main where

    -- | types
    type Vector a = [a]

    -- | operations
    (.-.) = zipWith (-)
    (.**) xs x = map (** x) xs

    -- | minkowski function
    minkowski :: Double -> Vector Double -> Vector Double -> Double
    minkowski p x y = somatoria ** (1.0 / p)
        where
            somatoria = sum normP
            normP = absVal .** p
            absVal = map abs (x .-. y)

    -- | minkowski variations
    manhattan = minkowski 1
    euclidiana = minkowski 2
    chebyshev x y = maximum
                    $ map abs
                    $ x .-. y
    
    -- | Main function
    main = do
        print $ manhattan [1,1] [4,3]
        print $ euclidiana [1,1] [4,3]
        print $ chebyshev [1,1] [4,3]