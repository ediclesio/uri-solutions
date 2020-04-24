
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2782

repete :: [Int] -> Int -> Int
repete [x] _ = 0
repete (x:xs) e | length xs > 0 && x-head xs /= e = 1 + repete xs (x-head xs)
                | otherwise = repete xs e

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          if n > 2
           then do let numbers = map read (words input) :: [Int]
                   putStrLn $ show (repete numbers 1)
           else putStrLn "1"