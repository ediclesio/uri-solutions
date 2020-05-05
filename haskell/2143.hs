
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2143

repete :: Int -> IO ()
repete 0 = return ()
repete i = do n <- readLn :: IO Int
              if mod n 2 == 0
               then putStrLn $ show (n*2-2)
               else putStrLn $ show (n*2-1)
              repete (i-1)

main :: IO ()
main = do t <- readLn :: IO Int
          if t == 0
           then return ()
           else do repete t
                   main