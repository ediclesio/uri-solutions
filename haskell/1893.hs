
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1893

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
          if a >= 0 && b <= 2
           then putStrLn "nova"
           else if b > a && b <= 96
                 then putStrLn "crescente"
                 else if a >= b && b <= 96
                       then putStrLn "minguante"
                       else putStrLn "cheia"