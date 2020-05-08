
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2840

toDouble :: Integer -> Double
toDouble x = fromIntegral x

calc :: Integer -> Integer -> Integer
calc r l = floor (toDouble l/v)
    where raio = r^3
          v = ((4*(3.1415*toDouble raio))/3)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Integer]
              r = numbers !! 0
              l = numbers !! 1
          putStrLn $ show (calc r l)