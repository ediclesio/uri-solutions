
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1471

import System.IO (isEOF)

mostra :: [Int] -> IO ()
mostra [] = putStrLn ""
mostra (x:xs) = do putStr $ show x ++ " "
                   mostra xs

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

nums :: Int -> [Int]
nums n = [x | x <- [1..n]]

naoRetornaram :: [Int] -> [Int] -> [Int]
naoRetornaram arr ns = [x | x <- ns, not (elem x arr)]

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Int]
                                n = numbers !! 0
                                r = numbers !! 1
                            input <- getLine
                            let numbers = map read (words input) :: [Int]
                            if n == r
                             then putStrLn "*"
                             else mostra $ qsort $ naoRetornaram numbers (nums n)
                            main
                    else return ()