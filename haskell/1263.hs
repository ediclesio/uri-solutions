
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1263

import System.IO (isEOF)
import Data.Char

seq' :: String -> Char -> Int
seq' [] _ = 0
seq' (a:as) c | a == c = 1 + seq' as c
              | otherwise = 0

cont :: String -> Int
cont [] = 0
cont (a:as) = do let c = seq' as a
                 if c >= 1
                  then 1 + cont (drop c as)
                  else cont as

main :: IO ()
main = do end  <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str /= ""
                    then do let a = words str
                            putStrLn $ show (cont (map toLower [x !! 0 | x <- a]))
                            main
                    else return ()