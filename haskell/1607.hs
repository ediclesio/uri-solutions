
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1607

import Data.Char

sum' :: Int -> Int -> Int
sum' a b | a /= b = 1 + if a == 122 then sum' 97 b else sum' (a+1) b
         | otherwise = 0

cont :: String -> String -> Int
cont [] _ = 0
cont (a:as) (b:bs) = (sum' (ord a) (ord b)) + cont as bs

repete :: Int -> IO ()
repete 0 = return ()
repete t = do input <- getLine
              let arr = words input
                  a = arr !! 0
                  b = arr !! 1
              putStrLn $ show (cont a b)
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t