
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1001

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          let x = a + b
          putStrLn $ "X = " ++ show x