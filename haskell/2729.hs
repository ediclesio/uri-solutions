
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2729

import Data.List

mostra :: [String] -> IO ()
mostra [a] = putStrLn a
mostra (a:as) = do putStr (a ++ " ")
                   mostra as

removeDuplicados :: [String] -> [String]
removeDuplicados [] = []
removeDuplicados (a:as) | elem a as = removeDuplicados as
                        | otherwise = a:removeDuplicados as

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              let arr = sort $ removeDuplicados (words str)
              mostra arr
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n