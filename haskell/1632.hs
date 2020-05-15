
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1632

import Data.Char

cont :: String -> Int -> Int
cont [] p = p
cont (a:as) p | a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 's' = cont as (p*3)
              | otherwise = cont as (p*2)

repete :: Int -> IO ()
repete 0 = return ()
repete t = do input <- getLine
              putStrLn $ show (cont (map toLower input) 1)
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t