
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2408

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

main :: IO ()
main = do input <- getLine
          let numbers = qsort (map read (words input) :: [Int])
          putStrLn $ show (numbers !! (length numbers - 2))