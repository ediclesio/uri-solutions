
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2434

repete :: Int -> Int -> Int -> IO Int
repete 0 _ menor = return menor
repete n s menor = do m <- readLn :: IO Int
                      let num = min (s+m) menor
                      repete (n-1) (s+m) num

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              s = numbers !! 1
          r <- repete n s s
          putStrLn $ show r