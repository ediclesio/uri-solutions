
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3091

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          putStrLn $ show (mod a b)