
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2293

maxColumn :: [[Int]] -> Int -> Int
maxColumn _ 0 = 0
maxColumn arr n = max s (maxColumn arr (n-1))
    where
        s = sum $ map (!! (n-1)) arr

maxLine :: [[Int]] -> Int
maxLine [] = 0
maxLine (a:as) = max s (maxLine as)
    where
        s = sum a

bigger :: [[Int]] -> Int -> Int
bigger arr len = max (maxLine arr) (maxColumn arr len)

loop :: Int -> IO [[Int]]
loop 0 = return []
loop n = do a <- loop (n-1)
            input <- getLine
            let numbers = map read (words input) :: [Int]
            return (a ++ [numbers])

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              m = numbers !! 1
          a <- loop n
          let res = bigger a m
          putStrLn $ show res