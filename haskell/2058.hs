
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2058

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ show (n-2)