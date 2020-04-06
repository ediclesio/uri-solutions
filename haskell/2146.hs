
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2146

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   putStrLn $ show (n-1)
                   main