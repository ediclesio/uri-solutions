
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1004

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          let prod = a*b
          putStrLn $ "PROD = " ++ show prod