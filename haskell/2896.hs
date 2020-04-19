
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2896

repete :: Int -> IO ()
repete 0 = return ()
repete t = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  n = numbers !! 0
                  k = numbers !! 1
              if n >= k
               then do putStrLn $ show (div n k + mod n k)
               else putStrLn $ show n
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t