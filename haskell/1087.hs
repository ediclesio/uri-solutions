
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1087

main :: IO ()
main = do input <- getLine
          if input == "0 0 0 0"
           then return ()
           else do let numbers = map read (words input) :: [Int]
                       x1 = numbers !! 0
                       y1 = numbers !! 1
                       x2 = numbers !! 2
                       y2 = numbers !! 3
                       x = abs (x1-x2)
                       y = abs (y1-y2)
                   if x1 == x2 && y1 == y2
                    then putStrLn "0"
                    else if x1 == x2 && y1 /= y2
                          then putStrLn "1"
                          else if x1 /= x2 && y1 == y2
                                then putStrLn "1"
                                else if x == y
                                      then putStrLn "1"
                                      else putStrLn "2"
                   main