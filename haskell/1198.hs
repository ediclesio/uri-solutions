
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1198

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   let numbers = map read (words input) :: [Integer]
                   if length numbers == 2
                    then do let hash = numbers !! 0
                                op = numbers !! 1
                            if hash >= op
                             then putStrLn $ show (hash - op)
                             else putStrLn $ show (op - hash)
                            main
                    else return ()