
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1017

import Text.Printf (printf)

main :: IO ()
main = do t <- readLn :: IO Double
          v <- readLn :: IO Double
          printf "%.3f\n" (t*v/12)