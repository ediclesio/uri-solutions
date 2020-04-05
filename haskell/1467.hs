
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1467

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   let numbers = map read (words input) :: [Int]
                       a = numbers !! 0
                       b = numbers !! 1
                       c = numbers !! 2
                   if a == b && b == c
                    then putStrLn $ "*"
                    else if a == b
                          then putStrLn $ "C"
                          else if b == c
                                then putStrLn $ "A"
                                else putStrLn $ "B"
                   main