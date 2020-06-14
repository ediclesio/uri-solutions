
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3089

getList :: [Int] -> Int -> Int -> [Int]
getList a i n | i < n = (a !! i + a !! (n*2-1-i)):getList a (i+1) n
              | otherwise = []

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do input <- getLine
                   let numbers = map read (words input) :: [Int]
                       lst = getList numbers 0 n
                   putStrLn $ show (maximum lst) ++ " " ++ show (minimum lst)
                   main