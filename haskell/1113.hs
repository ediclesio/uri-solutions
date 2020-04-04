
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1113

main :: IO ()
main = do str <- getLine
          let numbers = map read (words str) :: [Int]
              x = (numbers !! 0)
              y = (numbers !! 1)
          if x == y
            then return ()
            else do if x > y
                     then putStrLn $ "Decrescente"
                     else putStrLn $ "Crescente"
                    main