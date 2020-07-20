
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2418

import Text.Printf (printf)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              max' = maximum numbers
              min' = minimum numbers
          printf "%.1f\n" ((sum numbers) - max' - min')