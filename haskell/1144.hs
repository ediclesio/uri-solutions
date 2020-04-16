
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1144

repete :: Int -> Int -> Int -> IO ()
repete n i c | i <= n = do putStrLn $ show i ++ " " ++ 
                                      show (i*i) ++ " " ++ 
                                      show (i*i*i)
                           putStrLn $ show i ++ " " ++ 
                                      show (i*i+1) ++ " " ++ 
                                      show (i*(i*i+1)-c)
                           repete n (i+1) (c+1)
             | otherwise = return ()

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 1 0