
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2172

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Integer]
              x = numbers !! 0
              y = numbers !! 1
          if x == 0 && y == 0
           then return ()
           else do putStrLn $ show (x*y)
                   main