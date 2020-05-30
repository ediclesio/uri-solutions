
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2497

repete :: Int -> IO ()
repete i = do n <- readLn :: IO Int
              if n == -1
               then return ()
               else do putStrLn $ "Experiment " ++ show i ++ ": " ++
                        show (div n 2) ++ " full cycle(s)"
                       repete (i+1)

main :: IO ()
main = repete 1