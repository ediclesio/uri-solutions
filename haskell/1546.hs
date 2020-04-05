
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1546

feedbacks :: Int -> IO ()
feedbacks 0 = return ()
feedbacks k = do x <- readLn :: IO Int
                 if x == 1
                  then putStrLn $ "Rolien"
                  else if x == 2
                        then putStrLn $ "Naej"
                        else if x == 3
                              then putStrLn $ "Elehcim"
                              else if x == 4
                                    then putStrLn $ "Odranoel"
                                    else return ()
                 feedbacks (k-1)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do k <- readLn :: IO Int
              feedbacks k
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n