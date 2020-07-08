
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2568

calc :: Int -> Int -> Int -> Int -> Int
calc _ i _ 0 = i
calc d i x f | mod d 2 == 0 = calc (d+1) (i+x) x (f-1)
             | otherwise = calc (d+1) (i-x) x (f-1)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              d = 1 + numbers !! 0
              i = numbers !! 1
              x = numbers !! 2
              f = numbers !! 3
          putStrLn $ show (calc d i x f)