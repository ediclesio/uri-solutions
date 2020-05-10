
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2663

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort greater ++ [x] ++ qsort lesser
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

repete :: Int -> IO [Int]
repete 0 = return []
repete n = do num <- readLn :: IO Int
              r <- repete (n-1)
              return (r++[num])

getEmpates :: [Int] -> Int -> [Int]
getEmpates [] _ = []
getEmpates (x:xs) n | x == n = n:getEmpates xs n
                    | otherwise = []

main :: IO ()
main = do n <- readLn :: IO Int
          k <- readLn :: IO Int
          inputs <- repete n
          let arr = qsort inputs
              kElements = take k arr
              ultimos = getEmpates (drop k arr) (head $ drop (k-1) arr)
          putStrLn $ show (length (kElements ++ ultimos))