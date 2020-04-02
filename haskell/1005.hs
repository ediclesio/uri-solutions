
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1005

import Text.Printf (printf)

main :: IO ()
main = do a <- readLn :: IO Double
          b <- readLn :: IO Double
          printf "MEDIA = %.5f\n" ((3.5*a + 7.5*b)/11)