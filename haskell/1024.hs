
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1024

import Data.Char

remove' :: String -> Int -> Int -> String
remove' [] _ _ = []
remove' (a:as) i half | i > half = chr (ord a-1) : remove' as (i+1) half
                      | otherwise = a:remove' as (i+1) half

sum3 :: String -> String
sum3 [] = []
sum3 (a:as) | isLetter a = chr (ord a+3) : sum3 as
            | otherwise = a:sum3 as

loop :: Int -> IO ()
loop 0 = return ()
loop n = do str <- getLine
            let a = reverse $ sum3 str
            putStrLn $ remove' a 1 (div (length a) 2)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n