
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1037

main :: IO ()
main = do n <- readLn :: IO Float
          if n < 0 || n > 100
            then putStrLn $ "Fora de intervalo"
            else if n <= 25
                  then putStrLn $ "Intervalo [0,25]"
                  else if n <= 50
                        then putStrLn $ "Intervalo (25,50]"
                        else if n <= 75
                              then putStrLn $ "Intervalo (50,75]"
                              else putStrLn $ "Intervalo (75,100]"