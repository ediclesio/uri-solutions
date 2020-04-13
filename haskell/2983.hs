
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2983

import Data.List

toInt :: Double -> Int
toInt x = round x

primos :: Int -> [Int]
primos k = 2:[3,5..(toInt (sqrt $ fromIntegral k :: Double))]

isPrimo :: Int -> Bool
isPrimo 1 = False
isPrimo 2 = True
isPrimo k | mod k 2 == 0 = False
          | otherwise = length [x | x <- (primos k), mod k x == 0] == 0

mostraPrimos :: [Int] -> IO ()
mostraPrimos [x] = putStrLn $ show x ++ "."
mostraPrimos (x:xs) = do putStr $ show x ++ ", "
                         mostraPrimos xs

repete :: Int -> [Int] -> IO [Int]
repete 0 v = return v
repete n v = do x <- readLn :: IO Int
                if elem x v
                 then repete (n-1) v
                 else repete (n-1) (x:v)

main :: IO ()
main = do 
          n <- readLn :: IO Int
          numbers <- repete n []
          let primos = sort $ [x | x <- numbers, isPrimo x]
              len = length primos
          putStrLn $ show len
          if len > 0
           then mostraPrimos primos
           else putStrLn ""