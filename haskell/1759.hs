
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1759

repete :: Int -> IO ()
repete 1 = putStrLn $ "Ho!"
repete n = do putStr $ "Ho "
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n