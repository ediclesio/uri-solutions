

-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1003

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          let soma = a + b
          putStrLn $ "SOMA = " ++ show soma