
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2166

import Text.Printf (printf)

repete :: Double -> Double -> Double
repete 0 r = (r+1.0)
repete n r = repete (n-1) (1.0/(r+2.0))

main :: IO ()
main = do n <- readLn :: IO Double
          let r = repete n (read "0" :: Double)
          printf "%.10f\n" r