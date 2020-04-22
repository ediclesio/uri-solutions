
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2164

import Text.Printf (printf)

toDouble :: String -> Double
toDouble x = read x :: Double

main :: IO ()
main = do n <- readLn :: IO Int
          let x = (1 + sqrt 5)/2
              y = (1 - sqrt 5)/2
              fib = toDouble (show ((x^n-y^n)/sqrt 5))
          printf "%.1f\n" fib