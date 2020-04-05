
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1169

repete :: Int -> IO ()
repete 0 = return ()
repete i = do c <- readLn :: IO Int
              putStrLn $ show (div (2^c) 12000) ++ " kg"
              repete (i-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n