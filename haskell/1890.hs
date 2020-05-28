
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1890

calc :: Integer -> Integer -> Integer -> Integer
calc 0 y _ = y
calc x y z = calc (x-1) (y*z) z

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Integer]
                  c = numbers !! 0
                  d = numbers !! 1
              if c == 0 && d == 0
               then putStrLn "0"
               else putStrLn $ show (calc d (calc c 1 26) 10)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n