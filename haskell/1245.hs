
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1245

import System.IO (isEOF)
import Data.List

contPares :: [Int] -> [Int] -> Int
contPares [] _ = 0
contPares (d:ds) e | elem d e = 1 + contPares ds (delete d e)
                   | otherwise = contPares ds e

repete :: Int -> [Int] -> [Int] -> IO ([Int],[Int])
repete 0 d e = return (d,e)
repete n d e = do input <- getLine
                  let a = words input
                      num = read (a !! 0) :: Int
                      c = head (a !! 1)
                  if c == 'D'
                   then repete (n-1) (num:d) e
                   else repete (n-1) d (num:e)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   r <- repete n [] []
                   putStrLn $ show (contPares (fst r) (snd r))
                   main