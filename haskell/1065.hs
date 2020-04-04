
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1065

mostreQtdPares :: [Int] -> Int -> IO ()
mostreQtdPares [] q = putStrLn $ show q ++ " valores pares"
mostreQtdPares (x:xs) q = if mod x 2 == 0
                           then mostreQtdPares xs (q+1)
                           else mostreQtdPares xs q

main :: IO ()
main = do v1 <- readLn :: IO Int
          v2 <- readLn :: IO Int
          v3 <- readLn :: IO Int
          v4 <- readLn :: IO Int
          v5 <- readLn :: IO Int
          let numbers = v1:v2:v3:v4:v5:[]
          mostreQtdPares numbers 0