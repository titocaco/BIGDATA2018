{-
    Aula:       3
    Exercício:  5
    Enunciado:  Implemente fibonacci em paralelo
-}

-- | Main module
module Main where

    import Control.Parallel

    fib :: Integer -> Integer
    fib 0 = 0
    fib 1 = 1
    fib n = n1 `par` n2 `pseq` (n1 + n2)
        where
            n1 = fib (n - 1)
            n2 = fib (n - 2)

    main = do
        print $ fib 40