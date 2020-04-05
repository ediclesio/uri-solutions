
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1924

repete :: Int -> IO ()
repete 0 = return ()
repete n = do curso <- getLine
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n
          putStrLn $ "Ciencia da Computacao"