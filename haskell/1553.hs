
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1553

uniqueNumbers :: [Int] -> [Int] -> [Int]
uniqueNumbers [] b = b
uniqueNumbers (x:xs) b | notElem x b = uniqueNumbers xs (x:b)
                       | otherwise = uniqueNumbers xs b

result :: [Int] -> [Int] -> Int -> Int
result [] _ _ = 0
result (x:xs) nums k | length (filter (== x) nums) >= k = 1 + result xs nums k
                     | otherwise = result xs nums k

main :: IO ()
main = do input <- getLine
          if input == "0 0"
           then return ()
           else do let numbers = map read (words input) :: [Int]
                       n = numbers !! 0
                       k = numbers !! 1
                   input <- getLine
                   let numbers = map read (words input) :: [Int]
                       a = uniqueNumbers numbers []
                   putStrLn $ show (result a numbers k)
                   main