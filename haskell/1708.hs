
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1708

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              b = numbers !! 1
              a = abs ((numbers !! 0) - b)
              
              c = ceiling (fromIntegral b/ fromIntegral a)
          putStrLn $ show c