
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1103

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              h1 = numbers !! 0
              m1 = numbers !! 1
              h2 = numbers !! 2
              m2 = numbers !! 3
          if h1 == 0 && m1 == 0 && h2 == 0 && m2 == 0
           then return ()
           else do let a = if h1 == 0 then 24*60+m1 else h1*60+m1
                       b = if h2 == 0 then 24*60+m2 else h2*60+m2
                   if a < b
                    then putStrLn $ show (b-a)
                    else putStrLn $ show (24*60-(a-b))
                   main