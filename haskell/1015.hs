
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1015

import Text.Printf (printf)

calcDistancia :: Float -> Float -> Float -> Float -> Float
calcDistancia x1 y1 x2 y2 = sqrt ((x2-x1)^2 + (y2-y1)^2)

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Float]
              x1 = (numbers !! 0)
              y1 = (numbers !! 1)
          userInput <- getLine
          let numbers = map read (words userInput) :: [Float]
              x2 = (numbers !! 0)
              y2 = (numbers !! 1)
          printf "%.4f\n" (calcDistancia x1 y1 x2 y2)