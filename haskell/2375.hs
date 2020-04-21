
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2375

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              l = numbers !! 1
              p = numbers !! 2
          if n <= a && n <= l && n <= p
           then putStrLn "S"
           else putStrLn "N"