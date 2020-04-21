
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2295

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              a = numbers !! 0
              g = numbers !! 1
              ra = numbers !! 2
              rg = numbers !! 3
          if (a == g && ra == rg) || (ra/a <= rg/g)
           then putStrLn "G"
           else putStrLn "A"