
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1038

import Text.Printf (printf)

toDouble :: Int -> Double
toDouble x = fromIntegral x

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
          case a of
           1 -> printf "Total: R$ %.2f\n" ((toDouble b)*4.00)
           2 -> printf "Total: R$ %.2f\n" ((toDouble b)*4.50)
           3 -> printf "Total: R$ %.2f\n" ((toDouble b)*5.00)
           4 -> printf "Total: R$ %.2f\n" ((toDouble b)*2.00)
           5 -> printf "Total: R$ %.2f\n" ((toDouble b)*1.50)