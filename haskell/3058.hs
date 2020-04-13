
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3058

import Text.Printf (printf)

intToDouble :: Int -> Double
intToDouble x = fromIntegral x

repete :: Int -> Double -> IO ()
repete 0 menor = printf "%.2f\n" menor
repete n menor = do input <- getLine
                    let numbers = map read (words input) :: [Double]
                        p = numbers !! 0
                        g = numbers !! 1
                    repete (n-1) (min (p*(1000.0/g)) menor)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n (intToDouble (maxBound :: Int))