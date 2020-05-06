
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2544

import System.IO (isEOF)

repete :: Integer -> Integer -> IO ()
repete i n | i < n = if 2^i == n
                      then putStrLn $ show i
                      else repete (i+1) n
           
           | otherwise = return ()

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Integer
                   if n == 1
                    then do putStrLn "0"
                            main
                    else do repete 0 n
                            main