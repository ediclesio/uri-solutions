
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1436

repete :: Int -> IO ()
repete 0 = return ()
repete t = do repete (t-1)
              input <- getLine
              let numbers = map read (words input) :: [Int]
                  i = (div (numbers !! 0) 2)+1
                  c = numbers !! i
              putStrLn $ "Case " ++ show t ++ ": " ++ show c

main :: IO ()
main = do t <- readLn :: IO Int
          repete t