
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2416

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              c = numbers !! 0
              n = numbers !! 1
          putStrLn $ show (mod c n)