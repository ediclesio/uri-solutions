
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1963

import Text.Printf (printf)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Float]
              a = numbers !! 0
              b = numbers !! 1
          if a == b
           then printf "0.00%%\n"
           else printf "%.2f%%\n" (((b*100)/a)-100)