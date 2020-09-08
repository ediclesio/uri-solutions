
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1254

import System.IO (isEOF)
import Data.Char

f :: String -> String -> String
f a b = drop (length b - 1) a

equal' :: String -> String -> Bool
equal' _ [] = True
equal' [] _ = False
equal' (a:as) (b:bs) | toUpper a == toUpper b = equal' as bs
                     | otherwise = False

convert :: String -> String -> Int -> Bool -> String
convert [] _ _ _ = []
convert (a:as) b n c | a == '<' = a : convert as b n True
                     | a == '>' = a : convert as b n False
                     | c && equal' (a:as) b = show n ++ convert (f as b) b n c
                     | otherwise = a : convert as b n c

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if length input > 0 
                    then do num <- readLn :: IO Int
                            str <- getLine
                            putStrLn (convert str input num False)
                            main
                    else return ()