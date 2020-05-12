
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1214

import Text.Printf (printf)

toDouble :: Int -> Double
toDouble x = fromIntegral x

repete :: Int -> IO ()
repete 0 = return ()
repete c = do input <- getLine
              let numbers = map read (words input) :: [Double]
                  n = numbers !! 0
                  media = (sum (tail numbers))/n
                  acima = length $ filter (> media) (tail numbers)
              printf "%.3f%%\n" (toDouble acima/n*100)
              repete (c-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c