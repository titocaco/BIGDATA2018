{-
    Aula:       3
    Exercício:  2
    Enunciado:  Teste a função outerprod para os vetores
                [1,3,2] e [4,1,3]
-}

-- | Main module
module Main where

    type Vector a = [a]
    type Matrix a = [[a]]

    -- | outerprod function
    outerprod :: Num a => Vector a -> Vector a -> Matrix a
    outerprod u v = [ [ui * vi | vi <- v] | ui <- u]

    -- | Main function
    main = do
        print $ outerprod [1,3,2] [4,1,3]