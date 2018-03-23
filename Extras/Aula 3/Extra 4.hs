{-
    Aula:       3
    Exercício:  4
    Enunciado:  Implemente a Similaridade dos Cossenos,
                e a Distância de Jaccard.
-}

-- | Main module
module Main where

    -- | types
    type Vector a = [a]

    -- | operations
    (.+.) = zipWith (+)
    (.*.) = zipWith (*)
    (.**) xs x = map (** x) xs

    -- | cosine function
    cosine :: Vector Double -> Vector Double -> Double
    cosine x y = (dotprod x y) / (norm' x * norm' y)
        where
            dotprod u v = sum (u .*. v)
            norm' u = dotprod u u

    -- | jaccard function
    jaccard :: Vector Double -> Vector Double -> Double
    jaccard x y = 1 - (sum prod / sum soma)
        where
            prod = x .*. y
            soma = map (min 1) (x .+. y)
    
    -- | Main function
    main = do
        print $ cosine [0,1] [1,2]
        print $ jaccard [0,1] [1,2]