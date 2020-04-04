
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1153

fatSimples :: Int -> Int
fatSimples 0 = 1
fatSimples 1 = 1
fatSimples n = n * fatSimples (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ show (fatSimples n)