
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2454

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              p = numbers !! 0
              r = numbers !! 1
          if p == 0
           then putStrLn "C"
           else if r == 0
                 then putStrLn "B"
                 else putStrLn "A"