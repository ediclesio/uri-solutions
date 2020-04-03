
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1029

fibCalls :: Int -> Int
fibCalls 0 = 0
fibCalls 1 = 0
fibCalls n = 1+fibCalls (n-1) + 1+fibCalls (n-2)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do x <- readLn :: IO Int
              putStrLn $ ("fib(" ++ show x ++ ") = " ++ show (fibCalls x) ++
                          " calls = " ++ show (fib x))
              repete (n-1)

main :: IO ()
main = do num <- readLn :: IO Int
          repete num