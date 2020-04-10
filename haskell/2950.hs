
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2950

import Text.Printf (printf)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              n = numbers !! 0
              x = numbers !! 1
              y = numbers !! 2
          printf "%.2f\n" (n/(x+y))