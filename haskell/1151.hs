
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1151

resultado :: [Int] -> IO ()
resultado [x] = putStrLn $ show x
resultado (x:xs) = do putStr $ show x ++ " "
                      resultado xs

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

repete :: Int -> IO [Int]
repete 0 = return ((fib 0):[])
repete i = do let f = (fib i)
              fibs <- repete (i-1)
              return (f:fibs)

main :: IO ()
main = do n <- readLn :: IO Int
          fibs <- repete (n-1)
          resultado (reverse fibs)