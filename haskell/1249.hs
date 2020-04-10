
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1249

import System.IO (isEOF)
import Data.Char (ord, chr)

rot13 :: String -> String
rot13 [] = []
rot13 (a:as) | ord a >= ord 'a' && ord a <= ord 'z' = if ord a + 13 > ord 'z'
                                       then [chr (ord a-13)]++rot13 as
                                       else [chr (ord a+13)]++rot13 as
             | ord a >= ord 'A' && ord a <= ord 'Z' = if ord a + 13 > ord 'Z'
                                       then [chr (ord a-13)]++rot13 as
                                       else [chr (ord a+13)]++rot13 as
             | otherwise = [a]++rot13 as

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do putStrLn $ rot13 input
                            main