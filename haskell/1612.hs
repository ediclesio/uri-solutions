
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1612

repete :: Int -> IO ()
repete 0 = return ()
repete t = do n <- readLn :: IO Int
              putStrLn $ show (ceiling (fromIntegral n/ fromIntegral 2))
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t