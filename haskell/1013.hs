
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1013

maiorAB :: Int -> Int -> Int
maiorAB a b = div (a + b + abs (a - b)) 2

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              x = (numbers !! 0)
              y = (numbers !! 1)
              z = (numbers !! 2)
          putStrLn $ show (maiorAB (maiorAB x y) z) ++ " eh o maior"