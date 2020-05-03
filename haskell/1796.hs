
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1796

main :: IO ()
main = do q <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
          if length (filter (== 0) numbers) > length (filter (== 1) numbers)
           then putStrLn "Y"
           else putStrLn "N"