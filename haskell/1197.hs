
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1197

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   let numbers = map read (words input) :: [Int]
                   if length numbers == 2
                    then do let v = numbers !! 0
                                t = numbers !! 1
                            putStrLn $ show (v*2*t)
                            main
                    else return ()