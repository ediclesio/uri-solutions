
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1573

raizCubica :: Double -> Double
raizCubica x = x ** (1.0/3.0)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
          if a == 0 && b == 0 && c == 0
           then return ()
           else do putStrLn $ show (floor $ raizCubica (fromIntegral (a*b*c)))
                   main