
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1959

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Integer]
              n = numbers !! 0
              l = numbers !! 1
          putStrLn $ show (n*l)