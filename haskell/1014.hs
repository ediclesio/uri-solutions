
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1014

import Text.Printf (printf)

intToDouble :: Int -> Double
intToDouble x = fromIntegral x

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Double
          printf "%.3f km/l\n" (intToDouble x / y)