
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1071

sum' :: Int -> Int -> Int
sum' x y = sum [z | z <- [x+1..y-1], mod (abs z) 2 == 1]

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Int
          putStrLn $ show (sum' (min x y) (max x y))