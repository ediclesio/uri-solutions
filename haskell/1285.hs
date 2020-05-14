
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1285

import System.IO (isEOF)

repeteDigito :: String -> Bool
repeteDigito [] = False
repeteDigito (x:xs) | elem x xs = True
                    | otherwise = repeteDigito xs

cont :: Int -> Int -> Int
cont n m | n <= m = if repeteDigito (show n) == False
                     then 1 + cont (n+1) m
                     else cont (n+1) m
         | otherwise = 0

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Int]
                                n = numbers !! 0
                                m = numbers !! 1
                            putStrLn $ show (cont n m)
                            main
                    else return ()