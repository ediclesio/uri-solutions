
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1093

import Text.Printf (printf)

toDouble :: Int -> Double
toDouble x = fromIntegral x

foo :: Double -> Double -> Double -> Double
foo x1 x2 at | at == 3 = x1/(x1+x2)
             | otherwise = do let d = 1-(6-at)/6
                                  a = (1-d)/d
                              (1-a**x1)/(1-a**(x1+x2))

cont :: Int -> Int -> Int
cont ev d | ev > 0 = 1 + cont (ev-d) d
          | otherwise = 0

main :: IO ()
main = do input <- getLine
          if input /= "0 0 0 0"
           then do let numbers = map read (words input) :: [Int]
                       ev1 = numbers !! 0
                       ev2 = numbers !! 1
                       at = numbers !! 2
                       d = numbers !! 3
                       e1 = cont ev1 d
                       e2 = cont ev2 d
                       p = foo (toDouble e1) (toDouble e2) (toDouble at)
                   printf "%.1f\n" (p*100)
                   main
           else return ()