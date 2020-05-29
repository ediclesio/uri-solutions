
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1429

import Data.Char

fat :: Int -> Integer
fat x = product [1..toInteger x]

calc :: [Int] -> Int -> Integer
calc [] _ = 0
calc (x:xs) i = toInteger x * fat i + calc xs (i-1)

main :: IO ()
main = do input <- getLine
          if input == "0"
           then return ()
           else do let numbers = map digitToInt input
                   putStrLn $ show (calc numbers (length numbers))
                   main