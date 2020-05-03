
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1547

calc :: [Int] -> Int -> Int -> Int -> Int -> Int
calc [] _ _ _ a = a+1
calc (x:xs) i m s a = do if abs (s-x) < m
                          then calc xs (i+1) (abs (s-x)) s i
                          else calc xs (i+1) m s a

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  qt = numbers !! 0
                  s = numbers !! 1
              input <- getLine
              let numbers = map read (words input) :: [Int]
                  m = (abs (s-(numbers !! 0)))
              putStrLn $ show (calc (tail numbers) 1 m s 0)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n