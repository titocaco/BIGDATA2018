-- | Main module
module Main where

    type Vector a = [a]
    type Matrix a = [[a]]

    -- | Basic functions
    {-
        All the following functions do basic operations using matrices.
    -}
    tamanhoMtx :: Matrix a -> (Int, Int)
    tamanhoMtx mtx = (m, n)
        where
            m = length mtx
            n = length $ head mtx

    somaMtx :: Num a => Matrix a -> Matrix a -> Matrix a
    somaMtx = zipWith (zipWith (+))

    subMtx :: Num a => Matrix a -> Matrix a -> Matrix a
    subMtx = zipWith (zipWith (-))

    somaConstMtx :: Num a => a -> Matrix a -> Matrix a
    somaConstMtx x = map (map (+x))

    multConstMtx :: Num a => a -> Matrix a -> Matrix a
    multConstMtx x = map (map (* x))

    transpostaMtx :: Matrix a -> Matrix a
    transpostaMtx ([]:_) = []
    transpostaMtx m = (map head m) : transpostaMtx (map tail m)

    multMtx :: Num a => Matrix a -> Matrix a -> Matrix a
    multMtx m1 m2
        | k1 /= k2 = error "Matrizes incompatíveis!"
        | otherwise = [ [prodInterno ri rj | rj <- m2'] | ri <- m1 ]
            where
                m2' = transpostaMtx m2
                prodInterno l1 l2 = sum $ zipWith (*) l1 l2
                k1 = snd $ tamanhoMtx m1
                k2 = fst $ tamanhoMtx m2

    -- | mostraMat function, used to print the matrix in a friendly way
    mostraMat :: Matrix Int -> String
    mostraMat = unlines . map (unwords . map show)

    identidade :: Int -> Matrix Int
    identidade n = [ [fromEnum $ i == j | i <- [1..n]] | j <- [1..n]]

    -- | somaSec function
    somaSec :: Matrix Double -> Double
    somaSec mtx = sum [(mtx !! i) !! (n-i) | i <- [0..n]]
        where
            n = (fst $ tamanhoMtx mtx) - 1

    -- | Main function
    main = do
        print $ somaSec [[1,2,3], [4,0,6], [5,8,9]]