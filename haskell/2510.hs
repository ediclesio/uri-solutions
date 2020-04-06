
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2510

repete :: Int -> IO ()
repete 0 = return ()
repete n = do nome <- getLine
              putStrLn $ "Y"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n