
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2457

import Text.Printf (printf)

toDouble :: Int -> Double
toDouble x = fromIntegral x

main :: IO ()
main = do input <- getLine
          text <- getLine
          let c = head input
              a = words text
              t = length $ filter (elem c) a
          printf "%.1f\n" ((toDouble t/ toDouble (length a)) * 100)