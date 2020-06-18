
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1257

import Data.Char

calcCarac :: Char -> Int
calcCarac c = ord c - 65

calcStr :: String -> Int -> Int -> Int
calcStr [] _ _ = 0
calcStr (a:as) i j = (calcCarac a + i + j) + calcStr as (i+1) j

calcStrs :: [String] -> Int -> Int
calcStrs [] _ = 0
calcStrs (a:as) j = (calcStr a 0 j) + calcStrs as (j+1)

getStrs :: Int -> [String] -> IO [String]
getStrs 0 strs = return strs
getStrs l strs = do input <- getLine
                    getStrs (l-1) (strs ++ [input])

loop :: Int -> IO ()
loop 0 = return ()
loop n = do l <- readLn :: IO Int
            a <- getStrs l []
            putStrLn $ show (calcStrs a 0)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n