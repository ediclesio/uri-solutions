
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1104

import Data.List

remDuplicados :: [Int] -> [Int]
remDuplicados [] = []
remDuplicados lista = map head $ group $ sort lista

contDiferentes :: [Int] -> [Int] -> Int
contDiferentes [] _ = 0
contDiferentes (a:as) b | elem a b = contDiferentes as b
                        | otherwise = 1 + contDiferentes as b

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
          if a == 0 && b == 0
           then return ()
           else do cartas <- getLine
                   let alice = remDuplicados $ map read (words cartas) :: [Int]
                   cartas <- getLine
                   let beatriz = remDuplicados $ map read (words cartas) :: [Int]
                       x = contDiferentes alice beatriz
                       y = contDiferentes beatriz alice
                   putStrLn $ show (min x y)
                   main