
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2328

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
          putStrLn $ show (sum numbers - n)