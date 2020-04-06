
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2455

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              p1 = (numbers !! 0)
              c1 = (numbers !! 1)
              p2 = (numbers !! 2)
              c2 = (numbers !! 3)
          if p1*c1 == p2*c2
            then putStrLn $ "0"
            else if p1*c1 < p2*c2
                  then putStrLn $ "1"
                  else putStrLn $ "-1"