
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1020

repete :: Int -> Int -> Int -> Int -> [Int]
repete 0 y m d = y:m:d:[]
repete n y m d | n - 365 >= 0 = repete (n-365) (y+1) m d
               | n - 30 >= 0 = repete (n-30) y (m+1) d
               | n < 30 = repete (n-n) y m n

main :: IO ()
main = do n <- readLn :: IO Int
          let r = repete n 0 0 0
              y = r !! 0
              m = r !! 1
              d = r !! 2
          putStrLn $ show y ++ " ano(s)"
          putStrLn $ show m ++ " mes(es)"
          putStrLn $ show d ++ " dia(s)"