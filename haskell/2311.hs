
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2311

import Text.Printf (printf)

qsort :: [Double] -> [Double]
qsort [] = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

repete :: Int -> IO ()
repete 0 = return ()
repete n = do nome <- getLine
              gd <- readLn :: IO Double
              input <- getLine
              let arr = qsort (map read (words input) :: [Double])
                  numbers = drop 1 (reverse (drop 1 (reverse arr)))
              printf "%s %.2f\n" nome (gd * (sum numbers))
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n