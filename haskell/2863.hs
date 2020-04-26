
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2863

import System.IO (isEOF)

repete :: Int -> Double -> IO Double
repete 0 m = return m
repete t m = do x <- readLn :: IO Double
                if m > x
                 then repete (t-1) x
                 else repete (t-1) m

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do t <- readLn :: IO Int
                   r <- repete t 12
                   putStrLn $ show r
                   main