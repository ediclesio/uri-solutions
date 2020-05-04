
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1805

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Integer]
              a = numbers !! 0
              b = numbers !! 1
          putStrLn $ show (div ((a+b)*(b-a+1)) 2)