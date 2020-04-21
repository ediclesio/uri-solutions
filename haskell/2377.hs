
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2377

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              l = numbers !! 0
              d = numbers !! 1
          input <- getLine
          let numbers = map read (words input) :: [Double]
              k = numbers !! 0
              p = numbers !! 1
              pedagio = fromIntegral (floor (l/d))
          putStrLn $ show (floor ((pedagio*p)+(l*k)))