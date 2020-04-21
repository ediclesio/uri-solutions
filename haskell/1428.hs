
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1428

repete :: Int -> IO ()
repete 0 = return ()
repete t = do input <- getLine
              let numbers = map read (words input) :: [Double]
                  n = numbers !! 0
                  m = numbers !! 1
                  x = ceiling ((n-2)/3)
                  y = ceiling ((m-2)/3)
              putStrLn $ show (x*y)
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t