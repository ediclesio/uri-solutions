
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3047

main :: IO ()
main = do m <- readLn :: IO Int
          a <- readLn :: IO Int
          b <- readLn :: IO Int
          let c = m - (a+b)
              idades = a:b:c:[]
          putStrLn $ show (maximum idades)