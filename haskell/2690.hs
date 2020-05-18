
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2690

import Data.Char

mostra :: String -> IO ()
mostra [] = putStrLn ""
mostra (a:as) | elem a "GQaku" = putStr "0" >> mostra as
              | elem a "ISblv" = putStr "1" >> mostra as
              | elem a "EOYcmw" = putStr "2" >> mostra as
              | elem a "FPZdnx" = putStr "3" >> mostra as
              | elem a "JTeoy" = putStr "4" >> mostra as
              | elem a "DNXfpz" = putStr "5" >> mostra as
              | elem a "AKUgq" = putStr "6" >> mostra as
              | elem a "CMWhr" = putStr "7" >> mostra as
              | elem a "BLVis" = putStr "8" >> mostra as
              | elem a "HRjt" = putStr "9" >> mostra as

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let texto = [a | a <- input, isLetter a]
              if length texto > 12
               then mostra (take 12 texto)
               else mostra texto
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n