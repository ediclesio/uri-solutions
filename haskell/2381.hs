
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2381

import Data.List

aluno :: [String] -> Int -> IO ()
aluno [] _ = return  ()
aluno l k = putStrLn $ ((sort l) !! (k-1))

repete :: Int -> Int -> [String] -> IO ()
repete 0 k l = aluno l k
repete n k l = do str <- getLine
                  repete (n-1) k (l++[str])

main :: IO ()
main = do str <- getLine
          let numbers = map read (words str) :: [Int]
              n = numbers !! 0
              k = numbers !! 1
          repete n k []