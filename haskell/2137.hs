
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2137

import System.IO (isEOF)

mostra :: [String] -> IO ()
mostra [] = return ()
mostra (a:as) = do putStrLn a
                   mostra as

qsort :: [String] -> [String]
qsort [] = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

repete :: Int -> [String] -> IO [String]
repete 0 arr = return arr
repete n arr = do input <- getLine
                  repete (n-1) (input:arr)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   arr <- repete n []
                   mostra $ qsort arr
                   main