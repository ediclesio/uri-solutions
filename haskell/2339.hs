
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2339

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              c = numbers !! 0
              p = numbers !! 1
              f = numbers !! 2
          if c * f <= p
           then putStrLn "S"
           else putStrLn "N"