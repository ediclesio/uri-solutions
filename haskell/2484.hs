
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2484

import System.IO (isEOF)

for1 :: Int -> Int -> IO ()
for1 i m | m < i = do putStr " "
                      for1 i (m+1)
         | otherwise = return ()

for2 :: String -> Int -> Int -> IO ()
for2 arr j len | j < len-1 = do putStr ([arr !! j] ++ " ")
                                for2 arr (j+1) len
               | otherwise = putStrLn [arr !! j]

repete :: String -> Int -> Int -> IO ()
repete arr i len | i < length arr = do for1 i 0
                                       for2 arr 0 len
                                       repete arr (i+1) (len-1)
                 | otherwise = putStrLn ""

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do repete input 0 (length input)
                            main
                    else return ()