
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2395

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
          input <- getLine
          let numbers = map read (words input) :: [Int]
              x = numbers !! 0
              y = numbers !! 1
              z = numbers !! 2
          putStrLn $ show (div x a * div y b * div z c)