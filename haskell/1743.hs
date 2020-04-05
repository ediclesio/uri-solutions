
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1743

main :: IO ()
main = do input <- getLine
          let xs = map read (words input) :: [Int]
              x1 = xs !! 0
              x2 = xs !! 1
              x3 = xs !! 2
              x4 = xs !! 3
              x5 = xs !! 4
          input <- getLine
          let ys = map read (words input) :: [Int]
              y1 = ys !! 0
              y2 = ys !! 1
              y3 = ys !! 2
              y4 = ys !! 3
              y5 = ys !! 4
          if x1 /= y1 &&
             x2 /= y2 &&
             x3 /= y3 &&
             x4 /= y4 &&
             x5 /= y5
           then putStrLn $ "Y"
           else putStrLn $ "N"