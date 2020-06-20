
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1802

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort greater ++ [x] ++ qsort lesser
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

allCombs :: [Int] -> [Int] -> [Int] -> [Int] -> [Int] -> [[Int]]
allCombs a b c d e = [[r,s,t,v,x] | r <- a, s <- b, t <- c, v <- d, x <- e]

sumCombs :: [[Int]] -> [Int]
sumCombs arr = [sum x | x <- arr]

formatInput :: String -> [Int]
formatInput str = qsort $ tail $ map read (words str) :: [Int]

main :: IO ()
main = do input <- getLine
          let p = formatInput input
          input <- getLine
          let m = formatInput input
          input <- getLine
          let f = formatInput input
          input <- getLine
          let q = formatInput input
          input <- getLine
          let b = formatInput input
              arr = qsort $ sumCombs $ allCombs p m f q b
          k <- readLn :: IO Int
          putStrLn $ show (sum $ take k arr)