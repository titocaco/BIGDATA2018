-- | Main module
module Main where

    -- | mostraMat function, used to print the matrix in a friendly way
    mostraMat :: [[Int]] -> String
    mostraMat = unlines . map (unwords . map show)

    -- | identidade function
    {-
        In this function, each line is generated separately, adding the value 1
        for every element with line and column positions of the same number (n,n).
        
        The size of the list used to compose the whole line of the matrix is equal
        to n. And the number of lines is also equal to n, because it is a square
        matrix.
    -}
    identidade n = [ [fromEnum $ i == j | i <- [1..n]] | j <- [1..n]]

    -- | Main function
    main = do
        -- print $ tamanhoMtx [[1, 2], [3, 4]]
        -- print $ somaMtx [[1, 2], [3, 4]] [[3, 3], [1, 1]]
        -- print $ subMtx [[1, 2], [3, 4]] [[3, 3], [1, 1]]
        -- print $ somaConstMtx 2 [[1, 2], [3, 4]]
        -- print $ multConstMtx 2 [[1, 2], [3, 4]]
        -- print $ transpostaMtx [[1, 2], [3, 4]]
        -- print $ multMtx [[1, 2], [3, 4]] [[3, 3], [1, 1]]
        -- print $ identidade 3
        -- putStr $ mostraMat [[1, 2], [3, 4]]
        putStr $ mostraMat $ identidade 5