
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1149

sum' :: Int -> Int -> Int
sum' a 0 = a
sum' a n = (a+n)+sum' a (n-1)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              nums = [x | x <- tail numbers, x > 0]
          putStrLn $ show $ sum' a ((nums !! 0)-1)