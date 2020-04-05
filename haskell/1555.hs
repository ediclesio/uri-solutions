
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1555

repete :: Int -> IO ()
repete 0 = return ()
repete i = do userInput <- getLine
              let numbers = map read (words userInput) :: [Int]
                  x = numbers !! 0
                  y = numbers !! 1
                  rafael = (3*x)^2+y^2
                  beto = 2*(x^2)+(5*y)^2
                  carlos = -100*x+y^3
              if rafael > beto && rafael > carlos
                then putStrLn $ "Rafael ganhou"
                else if beto > rafael && beto > carlos
                      then putStrLn $ "Beto ganhou"
                      else putStrLn $ "Carlos ganhou"
              repete (i-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n