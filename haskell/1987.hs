
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1987

import System.IO (isEOF)
import Data.Char

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   let numbers = words input
                       m = numbers !! 1
                       s = sum (map digitToInt m)
                   putStr $ show s ++ " "
                   if mod s 3 == 0
                    then putStrLn "sim"
                    else putStrLn "nao"
                   main