
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2473

calc :: [Int] -> [Int] -> Int
calc [] _ = 0
calc (a:as) b | elem a b = 1 + calc as b
              | otherwise = calc as b

main :: IO ()
main = do input <- getLine
          let a = map read (words input) :: [Int]
          input <- getLine
          let b = map read (words input) :: [Int]
              n = calc a b
          case n of
           3 -> putStrLn "terno"
           4 -> putStrLn "quadra"
           5 -> putStrLn "quina"
           6 -> putStrLn "sena"
           _ -> putStrLn "azar"