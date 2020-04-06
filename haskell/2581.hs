
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2581

repete :: Int -> IO ()
repete 0 = return ()
repete n = do x <- getLine
              putStrLn $ "I am Toorg!"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n