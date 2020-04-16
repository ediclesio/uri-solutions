
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1099

sum' :: Int -> Int -> Int -> Int
sum' i x y | i < y = if mod i 2 == 1 then i + sum' (i+1) x y else sum' (i+1) x y
           | otherwise = 0

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  x = numbers !! 0
                  y = numbers !! 1
              if x < y
               then putStrLn $ show (sum' (x+1) x y)
               else putStrLn $ show (sum' (y+1) y x)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n