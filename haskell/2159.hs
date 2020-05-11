
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2159

import Text.Printf (printf)

main :: IO ()
main = do n <- readLn :: IO Double
          let x = n/(log n)
              y = x*1.25506
          printf "%.1f %.1f\n" x y