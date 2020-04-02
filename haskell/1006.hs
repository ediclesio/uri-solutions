
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1006

import Text.Printf (printf)

main :: IO ()
main = do a <- readLn :: IO Double
          b <- readLn :: IO Double
          c <- readLn :: IO Double
          printf "MEDIA = %.1f\n" (((a * 2) + (b * 3) + (c * 5)) / 10)