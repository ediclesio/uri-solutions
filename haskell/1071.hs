
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1071

sum' :: Int -> Int -> Int -> Int
sum' i x y | i < y = if mod i 2 == 1 then i + sum' (i+1) x y else sum' (i+1) x y
           | otherwise = 0

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Int
          if x < y
           then putStrLn $ show (sum' (x+1) x y)
           else putStrLn $ show (sum' (y+1) y x)