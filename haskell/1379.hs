
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1379

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
          if a == 0 && b == 0
           then return ()
           else do putStrLn $ show (a-(b-a))
                   main