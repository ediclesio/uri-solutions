
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1089

f :: [Int] -> Int -> Int
f a n = do let x = if (a !! 0 - a !! (n-1))*(a !! 0 - a !! 1) > 0
                    then 1
                    else 0
                  
               y = if (a !! (n-1) - a !! (n-2))*(a !! (n-1) - a !! 0) > 0
                    then 1
                    else 0
           x+y

contOndas :: [Int] -> Int -> Int -> Int
contOndas a i n | i < n-1 = if (a !! i - a !! (i-1)) * (a !! i - a !! (i+1)) > 0
                             then 1 + contOndas a (i+1) n
                             else contOndas a (i+1) n
           
                | otherwise = 0

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do input <- getLine
                   let numbers = map read (words input) :: [Int]
                   putStrLn $ show (contOndas numbers 1 n + f numbers n)
                   main