
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2235

f :: Int -> Int -> Int -> String
f a b c | a-b == 0 ||
          a-c == 0 ||
          b-c == 0 ||
          (a+b)-c == 0 ||
          (b+c)-a == 0 ||
          (a+c)-b == 0 = ['S']
        
        | otherwise = ['N']

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
          putStrLn $ f a b c