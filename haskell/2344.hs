
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2344

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
            then putStrLn $ "E"
            else if n <= 35
                  then putStrLn $ "D"
                  else if n <= 60
                        then putStrLn $ "C"
                        else if n <= 85
                              then putStrLn $ "B"
                              else putStrLn $ "A"