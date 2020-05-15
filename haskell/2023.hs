
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2023

import System.IO (isEOF)
import Data.Char

qsort :: [String] -> [String]
qsort [] = []
qsort (x:xs) = qsort greater ++ [x] ++ qsort lesser
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

repete :: [String] -> IO [String]
repete nomes = do end <- isEOF
                  if end
                   then return nomes
                   else do input <- getLine
                           if input /= ""
                            then repete (input:nomes)
                            else return nomes

main :: IO ()
main = do arr <- repete []
          let c = head $ qsort $ map (map toLower) arr
          putStrLn $ head [a | a <- arr, map toLower a == c]