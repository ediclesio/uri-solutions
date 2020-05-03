
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1541

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
          if numbers !! 0 == 0
           then return ()
           else do let a = numbers !! 0
                       b = numbers !! 1
                       c = numbers !! 2
                   putStrLn $ show (floor (sqrt (a*b*100/c)))
                   main