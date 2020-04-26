
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2866

import Data.Char

mostra :: String -> IO ()
mostra [] = putStrLn ""
mostra (a:as) | isLower a = do putStr [a]
                               mostra as
              | otherwise = mostra as

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              mostra (reverse str)
              repete (n-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c