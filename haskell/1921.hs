
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1921

main :: IO ()
main = do n <- readLn :: IO Integer
          putStrLn $ show (div ((n-3)*n) 2)