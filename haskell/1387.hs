
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1387

main :: IO ()
main = do n <- getLine
          let numbers = map read (words n) :: [Int]
              l = numbers !! 0
              r = numbers !! 1
          if l /= 0 && r /= 0
            then do putStrLn $ show (l + r)
                    main
            else return ()