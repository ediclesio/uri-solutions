
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2728

import System.IO (isEOF)
import Data.Char

isValid :: [String] -> String -> Bool
isValid [] _ = True
isValid (a:as) (b:bs) | head a == b || head (reverse a) == b = isValid as bs
                      | otherwise = False

split' :: String -> String -> [String]
split' [] b = [b]
split' (a:as) b | a /= '-' = split' as (b++[a])
                | otherwise = b:split' as []

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let arr = split' (map toLower input) []
                            if isValid arr "cobol"
                             then putStrLn "GRACE HOPPER"
                             else putStrLn "BUG"
                            main
                    else return ()