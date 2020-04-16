
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1143

repete :: Int -> IO ()
repete 0 = return ()
repete i = do repete (i-1)
              putStrLn $ show i ++ " " ++ show (i*i) ++ " " ++ show (i*i*i)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n