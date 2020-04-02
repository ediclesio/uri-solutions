
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1002

import Text.Printf (printf)

areaCirculo :: Double -> Double
areaCirculo raio = 3.14159 * (raio ^ 2)

main :: IO ()
main = do a <- readLn :: IO Double
          printf "A=%.4g\n" (areaCirculo a)