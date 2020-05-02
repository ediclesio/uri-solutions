
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1371

repete :: Integer -> Integer -> IO ()
repete n i | i*i <= n = do if i == 1 
                            then putStr $ show (i*i) 
                            else putStr $ " " ++ show (i*i)
                           repete n (i+1)
           | otherwise = return ()


main :: IO ()
main = do n <- readLn :: IO Integer
          if n == 0
           then return ()
           else do repete n 1
                   putStrLn ""
                   main