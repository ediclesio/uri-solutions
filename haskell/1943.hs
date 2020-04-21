
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1943

getCategoria :: Int -> Int
getCategoria k | k == 1 = 1
               | k > 1 && k <= 3 = 3
               | k > 3 && k <= 5 = 5
               | k > 5 && k <= 10 = 10
               | k > 10 && k <= 25 = 25
               | k > 25 && k <= 50 = 50
               | otherwise = 100

main :: IO ()
main = do k <- readLn :: IO Int
          putStrLn $ "Top " ++ show (getCategoria k)