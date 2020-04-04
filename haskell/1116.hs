
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1116

import Text.Printf (printf)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Double]
                  x = numbers !! 0
                  y = numbers !! 1
              if y == 0
               then putStrLn "divisao impossivel"
               else printf "%.1f\n" (x/y)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n