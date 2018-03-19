{-
    Aula:       3
    Exercício:  1
    Enunciado:  Crie uma função que receba 3 valores do tipo Double: a, b, c e
                retorne as raízes da equação

                    a * x^2 + b * x + c
-}

-- | Main module
module Main where

    -- | raizSegGrau function
    raizSegGrau :: Double -> Double -> Double -> (Double, Double)
    raizSegGrau a b c
        | delta < 0 = error "Raízes Negativas!"
        | otherwise = (x1, x2)
        where
            x1 = (- b - sqrt delta) / (2 * a)
            x2 = (- b + sqrt delta) / (2 * a)
            delta = b ** 2 - 4 * a * c

    -- | Main function
    main = do
        print $ raizSegGrau 1 4 2
        print $ raizSegGrau 1 0 0
        print $ raizSegGrau 1 2 2
        