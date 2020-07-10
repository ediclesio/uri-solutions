
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2149

import System.IO (isEOF)

fillFib :: Int -> Int -> [Integer] -> [Integer]
fillFib i l a | i <= l = if mod i 2 == 0
                          then fillFib (i+1) l (a++[a !! (i-1) * a !! (i-2)])
                          else fillFib (i+1) l (a++[a !! (i-1) + a !! (i-2)])
              
              | otherwise = a

fib :: Int -> Integer
fib 1 = 0
fib 2 = 1
fib n = (fillFib 3 17 [0,0,1]) !! n

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   putStrLn $ show (fib n)
                   main