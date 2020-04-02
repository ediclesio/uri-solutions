
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1007

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          c <- readLn :: IO Int
          d <- readLn :: IO Int
          putStrLn $ "DIFERENCA = " ++ show (a * b - c * d)