
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1011

import Text.Printf (printf)

main :: IO ()
main = do r <- readLn :: IO Double
          printf "VOLUME = %.3f\n" ((((4.0/3) * 3.14159)*(r^3)) :: Double)