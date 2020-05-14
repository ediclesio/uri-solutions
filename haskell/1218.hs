
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1218

import System.IO (isEOF)

getPares :: [String] -> Int -> Int -> Int -> Int -> [Int]
getPares [] _ ps f m = ps:f:m:[]
getPares (a:b:as) n ps f m | (read a :: Int) == n = if b == "F"
                                                     then getPares as n (ps+1) (f+1) m
                                                     else getPares as n (ps+1) f (m+1)
                           | otherwise = getPares as n ps f m

repete :: Int -> IO ()
repete c = do end <- isEOF
              if end
               then return ()
               else do n <- if c > 1
                             then putStrLn "" >> readLn :: IO Int
                             else readLn :: IO Int
                       input <- getLine
                       putStrLn $ "Caso " ++ show c ++ ":"
                       let r = getPares (words input) n 0 0 0
                       putStrLn $ "Pares Iguais: " ++ show (r !! 0)
                       putStrLn $ "F: " ++ show (r !! 1)
                       putStrLn $ "M: " ++ show (r !! 2)
                       repete (c+1)

main :: IO ()
main = repete 1