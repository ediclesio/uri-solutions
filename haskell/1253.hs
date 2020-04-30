
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1253

import Data.Char

mostra :: String -> Int -> IO ()
mostra [] _ = putStrLn ""
mostra (a:as) x = do if ord a - x < 65 
                      then putStr $ [chr (91-(65-(ord a-x)))]
                      else putStr $ [chr (ord a - x)]
                     mostra as x

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              num <- readLn :: IO Int
              mostra str num
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n