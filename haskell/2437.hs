
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2437

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              xm = numbers !! 0
              ym = numbers !! 1
              xr = numbers !! 2
              yr = numbers !! 3
          putStrLn $ show (abs (xr-xm) + abs (yr-ym))