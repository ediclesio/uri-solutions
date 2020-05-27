
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1953

import System.IO (isEOF)

contFrecs :: [String] -> Int -> Int -> Int -> [Int]
contFrecs [] epr ehd i = epr:ehd:i:[]
contFrecs (a:as) epr ehd i | a == "EPR" = contFrecs as (epr+1) ehd i
                           | a == "EHD" = contFrecs as epr (ehd+1) i
                           | otherwise = contFrecs as epr ehd (i+1)

repete :: Int -> IO [String]
repete 0 = return []
repete n = do input <- getLine
              let a = words input
                  c = a !! 1
              r <- repete (n-1)
              return (c:r)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   r <- repete n
                   let arr = contFrecs r 0 0 0
                   putStrLn $ "EPR: " ++ show (arr !! 0)
                   putStrLn $ "EHD: " ++ show (arr !! 1)
                   putStrLn $ "INTRUSOS: " ++ show (arr !! 2)
                   main