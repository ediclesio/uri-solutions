
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2234

import Text.Printf (printf)

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Double]
              h = (numbers !! 0)
              p = (numbers !! 1)
          printf "%.2f\n" (h/p)