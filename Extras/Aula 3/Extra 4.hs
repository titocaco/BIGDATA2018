{-
    Aula:       3
    Exercício:  4
    Enunciado:  Implemente a Similaridade dos Cossenos
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

    -- | dotprod function
    dotprod :: Vector Double -> Vector Double -> Double
    dotprod u v = sum (u .*. v)

    -- | norm' function
    norm' :: Vector Double -> Double
    norm' u = dotprod u u

    -- | cosine similarity
    cosine :: Vector Double -> Vector Double -> Double
    cosine x y = dotprod x y / (sqrt $ (norm' x * norm' y))

    -- | jaccard distance
    jaccard :: Vector Double -> Vector Double -> Double
    jaccard x y = 1 - (dotprod x y) / (norm' x + norm' y - dotprod x y)
    
    -- | Main function
    main = do
        print $ cosine [2,3,5] [0,0,2]
        print $ jaccard [2,3,5] [0,0,2]