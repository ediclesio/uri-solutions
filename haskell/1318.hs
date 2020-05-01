
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1318

count :: [Int] -> Int
count [] = 0
count (x:xs) | x > 1 = 1 + count xs
             | otherwise = count xs

arr :: Int -> [Int]
arr n = take (n+1) (repeat 0)

repete :: [Int] -> [Int] -> [Int]
repete [] b = b
repete (a:as) b = repete as (take a b ++ [((b !! a)+1)] ++ drop (a+1) b)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              m = numbers !! 1
          if n == 0 && m == 0
           then return ()
           else do input <- getLine
                   let a = repete (map read (words input) :: [Int]) (arr n)
                   putStrLn $ show (count (tail a))
                   main