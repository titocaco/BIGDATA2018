{-
    Aula:       3
    Exercício:  1
    Enunciado:  Simule a função transpose para a entrada
                [[1,2], [3,4], [5,6]]
-}

-- | Main module
module Main where

    type Vector a = [a]
    type Matrix a = [[a]]

    -- | transpose function
    transpose :: Matrix a -> Matrix a
    transpose [] = []
    transpose ([] : xss) = transpose xss
    transpose ((x:xs) : xss) = (x : [h | (h:_) <- xss])
                                    : transpose (xs : [t | (_:t) <- xss])

    -- | Main function
    main = do
        print $ transpose [[1,2], [3,4], [5,6]]