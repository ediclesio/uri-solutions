
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2232

calcSomaPascal :: Int -> Int -> Int
calcSomaPascal n i | i < n = (2^i) + calcSomaPascal n (i+1)
                   | otherwise = 0

repete :: Int -> IO ()
repete 0 = return ()
repete t = do n <- readLn :: IO Int
              putStrLn $ show (calcSomaPascal n 0)
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t