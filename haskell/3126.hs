
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3126

main :: IO ()
main = do c <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
              r = length $ filter (== 1) numbers
          putStrLn $ show r