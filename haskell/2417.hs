
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2417

main :: IO ()
main = do str <- getLine
          let numbers = map read (words str) :: [Int]
              cv = numbers !! 0
              ce = numbers !! 1
              cs = numbers !! 2
              fv = numbers !! 3
              fe = numbers !! 4
              fs = numbers !! 5
              cpontos = cv*3+ce
              fpontos = fv*3+fe
          if cpontos == fpontos
            then do if cs == fs
                     then putStrLn $ "="
                     else if cs > fs
                           then putStrLn $ "C"
                           else putStrLn $ "F"
            else if cpontos > fpontos
                  then putStrLn $ "C"
                  else putStrLn $ "F"