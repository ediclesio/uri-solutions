
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1042

getStr :: Int -> Int -> Int -> String
getStr a b c = if a >= b && b >= c
                  then show c ++ "\n" ++ 
                       show b ++ "\n" ++ 
                       show a
                  else if c >= b && b >= a
                        then show a ++ "\n" ++ 
                             show b ++ "\n" ++ 
                             show c
                        else if b >= a && a >= c
                              then show c ++ "\n" ++ 
                                   show a ++ "\n" ++ 
                                   show b
                              else if a >= c && c >= b
                                    then show b ++ "\n" ++ 
                                         show c ++ "\n" ++ 
                                         show a
                                    else if b >= c && c >= a
                                          then show a ++ "\n" ++ 
                                               show c ++ "\n" ++ 
                                               show b
                                          else show b ++ "\n" ++ 
                                               show a ++ "\n" ++ 
                                               show c

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
              r = getStr a b c
          putStrLn $ r
          putStrLn $ "\n" ++ show a ++ "\n" ++ show b ++ "\n" ++ show c