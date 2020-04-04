
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1097

sequencia :: Int -> Int -> Int -> IO ()
sequencia i j k | k <= 3 = do putStrLn $ "I="++ show i ++ " J=" ++ show j
                              sequencia i (j-1) (k+1)
                | otherwise = return ()

repete :: Int -> Int -> IO ()
repete i j | i <= 9 = do sequencia i j 1
                         repete (i+2) (j+2)
           | otherwise = return ()

main :: IO ()
main = repete 1 7