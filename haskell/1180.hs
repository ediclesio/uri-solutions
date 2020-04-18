
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1180

index' :: Int -> [Int] -> Int
index' n (x:xs) = if x == n then 0 else 1 + index' n xs

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
              m = minimum numbers
              i = index' m numbers
          putStrLn $ "Menor valor: " ++ show m
          putStrLn $ "Posicao: " ++ show i