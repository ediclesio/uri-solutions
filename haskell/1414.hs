
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1414

repete :: Int -> IO Int
repete 0 = return 0
repete n = do input <- getLine
              let a = words input
                  p = read (a !! 1) :: Int
              s <- repete (n-1)
              return (s+p)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              t = numbers !! 0
              n = numbers !! 1
          if t == 0
           then return ()
           else do s <- repete t
                   putStrLn $ show (n*3-s)
                   main