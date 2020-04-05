
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1155

import Text.Printf (printf)

repete :: Double -> Double -> IO ()
repete 0 s = printf "%.2f\n" s
repete i s = repete (i-1) (s+(1.0/i))

main :: IO ()
main = repete 100.0 0.0