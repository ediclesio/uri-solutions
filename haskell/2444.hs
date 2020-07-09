
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2444

calc :: [Int] -> Int -> Int
calc [] v = v
calc (x:xs) v | v + x >= 100 = calc xs 100
              | v + x <= 0 = calc xs 0
              | otherwise = calc xs (v+x)

main :: IO ()
main = do input <- getLine
          let v = (map read (words input) :: [Int]) !! 0
          input <- getLine
          let numbers = map read (words input) :: [Int]
          putStrLn $ show (calc numbers v)