
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1170

dias :: Double -> Int
dias c | c > 1 = 1 + dias (c/2)
       | otherwise = 0

repete :: Int -> IO ()
repete 0 = return ()
repete i = do c <- readLn :: IO Double
              putStrLn $ show (dias c) ++ " dias"
              repete (i-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n