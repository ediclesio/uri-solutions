
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1156

import Text.Printf (printf)

toDouble :: Int -> Double
toDouble x = fromIntegral x

sum' :: Int -> Int -> Double
sum' i j | i < 40 = (toDouble i/ toDouble j) + sum' (i+2) (j*2)
         | otherwise = 0

main :: IO ()
main = printf "%.2f\n" (sum' 1 1)