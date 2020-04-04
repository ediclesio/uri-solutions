
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1096

sequencia :: Int -> Int -> IO ()
sequencia i j | j >= 5 = do putStrLn $ "I="++ show i ++ " J=" ++ show j
                            sequencia i (j-1)
              | otherwise = return ()

repete :: Int -> Int -> IO ()
repete i j | i <= 9 = do sequencia i j
                         repete (i+2) j
           | otherwise = return ()

main :: IO ()
main = repete 1 7