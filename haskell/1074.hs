
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1074

repete :: Int -> IO ()
repete 0 = return ()
repete n = do x <- readLn :: IO Int
              if x == 0
                then putStrLn $ "NULL"
                else do if mod x 2 == 0
                         then putStr $ "EVEN "
                         else putStr $ "ODD "
                        
                        if x > 0
                         then putStrLn $ "POSITIVE"
                         else putStrLn $ "NEGATIVE"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n