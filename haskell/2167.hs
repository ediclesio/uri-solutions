
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2167

repete :: [Int] -> Int -> Int -> Int
repete numbers i s | i < (length numbers)-1 = if numbers !! i > numbers !! (i+1)
                                               then (i+2)
                                               else repete numbers (i+1) s
                   | otherwise = s

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
          putStrLn $ show (repete numbers 0 0)