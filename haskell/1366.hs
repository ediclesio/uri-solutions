
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1366

repete :: Int -> Int -> IO ()
repete 0 s = putStrLn $ show (div s 4)
repete n s = do input <- getLine
                let numbers = map read (words input) :: [Int]
                    c = numbers !! 0
                    v = numbers !! 1
                if mod v 2 == 0
                 then repete (n-1) (s+v)
                 else repete (n-1) (s+v-1)

main :: IO ()
main = do n <- readLn :: IO Int
          if n /= 0
           then do repete n 0
                   main
           else return ()