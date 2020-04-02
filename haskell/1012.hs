
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1012

import Text.Printf (printf)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
          printf "TRIANGULO: %.3f\n" ((a*c)/2)
          printf "CIRCULO: %.3f\n" (3.14159 * (c^2))
          printf "TRAPEZIO: %.3f\n" (((a+b)*c)/2)
          printf "QUADRADO: %.3f\n" (b^2)
          printf "RETANGULO: %.3f\n" (a*b)