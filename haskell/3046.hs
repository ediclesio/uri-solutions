
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3046

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ show (div ((n+1)*(n+2)) 2)