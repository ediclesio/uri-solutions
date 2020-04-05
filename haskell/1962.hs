
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1962

repete :: Int -> IO ()
repete 0 = return ()
repete n = do t <- readLn :: IO Int
              if t - 2015 > 0
               then putStrLn $ show ((t-2015)+1) ++ " A.C."
               else if t - 2015 < 0
                     then putStrLn $ show (-(t-2015)) ++ " D.C."
                     else putStrLn $ "1 A.C."
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n