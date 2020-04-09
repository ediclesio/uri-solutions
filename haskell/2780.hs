
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2780

main :: IO ()
main = do d <- readLn :: IO Int
          if d >= 0 && d <= 2000
           then do if d <= 800
                    then putStrLn $ "1"
                    else if d <= 1400
                          then putStrLn $ "2"
                          else putStrLn $ "3"
           else return ()