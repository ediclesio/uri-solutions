
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2424

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              x = numbers !! 0
              y = numbers !! 1
          if x >= 0 && x <= 432 && y >= 0 && y <= 468
           then putStrLn "dentro"
           else putStrLn "fora"