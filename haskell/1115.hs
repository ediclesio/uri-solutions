
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1115

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              x = numbers !! 0
              y = numbers !! 1
          if x == 0 || y == 0
           then return ()
           else do if x > 0 && y > 0
                    then putStrLn "primeiro"
                    else if x < 0 && y > 0
                          then putStrLn "segundo"
                          else if x < 0 && y < 0
                                then putStrLn "terceiro"
                                else putStrLn "quarto"
                   main