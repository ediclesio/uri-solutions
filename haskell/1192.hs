
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1192

import Data.Char

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              if length str == 3
               then do let n1 = digitToInt (str !! 0)
                           c = str !! 1
                           n2 = digitToInt (str !! 2)
                       if n1 == n2
                        then putStrLn $ show (n1*n2)
                        else if isLetter c
                              then do if isUpper c
                                       then putStrLn $ show (n2-n1)
                                       else putStrLn $ show (n1+n2)
                              else putStr $ ""
               else putStr $ ""
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n