
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1250

cont :: [Int] -> String -> Int -> Int
cont a b i | i < length a = if (a !! i > 0 && a !! i < 3 && b !! i == 'S') ||
                               (a !! i > 2 && b !! i == 'J')
                             then 1 + cont a b (i+1)
                             else cont a b (i+1)
           | otherwise = 0

repete :: Int -> IO ()
repete 0 = return ()
repete n = do t <- readLn :: IO Int
              input <- getLine
              let numbers = map read (words input) :: [Int]
              str <- getLine
              putStrLn $ show (cont numbers str 0)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n