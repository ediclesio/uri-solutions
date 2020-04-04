
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1095

sequencia :: Int -> Int -> IO ()
sequencia i j = if j < 0
                 then return ()
                 else do putStrLn $ "I=" ++ show i ++ " J=" ++ show j
                         sequencia (i+3) (j-5)

main :: IO ()
main = sequencia 1 60