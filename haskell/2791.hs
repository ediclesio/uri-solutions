
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2791

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
          if numbers !! 0 == 1
            then putStrLn "1"
            else if numbers !! 1 == 1
                  then putStrLn "2"
                  else if numbers !! 2 == 1
                        then putStrLn "3"
                        else if numbers !! 3 == 1
                              then putStrLn "4"
                              else return ()