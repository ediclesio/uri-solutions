
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2150

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do v <- getLine
                   if v /= ""
                    then do t <- getLine
                            putStrLn $ show (length [a | a <- t, elem a v])
                            main
                    else return ()