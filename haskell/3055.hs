
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3055

main :: IO ()
main = do a <- readLn :: IO Int
          m <- readLn :: IO Int
          putStrLn $ show (2*m-a)