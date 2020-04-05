
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1165

divide :: Int -> Int -> Int
divide 0 _ = 0
divide x i | x == i = 1
           | mod x i == 0 = 1 + divide x (i+1)
           | otherwise = divide x (i+1)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do x <- readLn :: IO Int
              if (divide x 2)== 1
                then putStrLn $ show x ++ " eh primo"
                else putStrLn $ show x ++ " nao eh primo"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n