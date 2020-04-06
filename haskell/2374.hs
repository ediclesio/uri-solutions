
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2374

main :: IO ()
main = do n <- readLn :: IO Int
          m <- readLn :: IO Int
          putStrLn $ show (n-m)