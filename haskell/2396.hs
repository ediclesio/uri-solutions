
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2396

index :: [Int] -> Int -> Int -> Int
index [] _ _ = 0
index (x:xs) y i | x == y = i
                 | otherwise = index xs y (i+1)

repete :: Int -> IO [Int]
repete 0 = return []
repete n = do a <- repete (n-1)
              input <- getLine
              let numbers = map read (words input) :: [Int]
                  m = sum numbers
              return (a++[m])

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              m = numbers !! 1
          a <- repete n
          let x = minimum a
              y = minimum [w | w <- a, w /= x]
              z = minimum [w | w <- a, w /= x, w /= y]
          putStrLn $ show (index a x 1)
          putStrLn $ show (index a y 1)
          putStrLn $ show (index a z 1)