
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3106

findDivisibleBy3 :: Int -> Int
findDivisibleBy3 x | x >= 3 && mod x 3 == 0 = x
                   | x > 3 = findDivisibleBy3 (x-1)
                   | otherwise = 0

calc :: [Int] -> [Int] -> Int
calc [] b = sum b
calc (a:as) b | mod a 3 == 0 = calc as (a:b)
              | otherwise = calc as (findDivisibleBy3 a:b)

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
          putStrLn $ show (calc numbers [])