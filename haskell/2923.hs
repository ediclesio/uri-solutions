
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2923

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input)
              t = numbers !! 0
              a = numbers !! 1
              w = numbers !! 2
              c = numbers !! 3
              p = div (a*100) t
          if p >= w && p < c
           then putStrLn "warning"
           else if p >= c
                 then putStrLn "critical"
                 else putStrLn "OK"