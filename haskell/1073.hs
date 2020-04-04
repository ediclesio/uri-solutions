
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1073

quadradosParesAteN :: Int -> Int -> IO ()
quadradosParesAteN i n = if i <= n
                          then do putStrLn $ show (i+1) ++ "^2" ++ " = "++ show ((i+1)^2)
                                  quadradosParesAteN (i+2) n
                          else return ()

main :: IO ()
main = do n <- readLn :: IO Int
          quadradosParesAteN 1 n