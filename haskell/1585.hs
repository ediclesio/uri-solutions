
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1585

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  x = numbers !! 0
                  y = numbers !! 1
              putStrLn $ show (div (x*y) 2) ++ " cm2"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n