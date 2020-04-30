
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1235

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              putStr (reverse $ take (div (length str) 2) str)
              putStrLn (take (div (length str) 2) (reverse str))
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n