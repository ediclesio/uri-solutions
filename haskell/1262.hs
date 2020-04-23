
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1262

import System.IO (isEOF)

repete :: String -> Int -> Int -> Int -> Int
repete [] proc clock _ = if proc > 0 then clock+1 else clock
repete (a:as) proc clock p | a == 'W' = if proc > 0
                                         then repete as 0 (clock+2) p
                                         else repete as proc (clock+1) p
                           
                           | otherwise = if proc+1 == p
                                          then repete as 0 (clock+1) p
                                          else repete as (proc+1) clock p

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str == ""
                    then return ()
                    else do p <- readLn :: IO Int
                            putStrLn $ show (repete str 0 0 p)
                            main