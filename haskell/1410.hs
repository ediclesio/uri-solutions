
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1410

qsort :: [Int] -> [Int]
qsort []     = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              d = numbers !! 1
          if a == 0 && d == 0
           then return ()
           else do input <- getLine
                   let b = map read (words input) :: [Int]
                   input <- getLine
                   let c = qsort (map read (words input) :: [Int])
                   if minimum b < c !! 0 || minimum b < c !! 1
                    then putStrLn "Y"
                    else putStrLn "N"
                   main