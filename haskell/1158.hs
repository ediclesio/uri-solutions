
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1158

sum' :: Int -> Int -> Int
sum' y x = sum $ take y [x | x <- [x,x+2..]]

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  x = numbers !! 0
                  y = numbers !! 1
              if mod x 2 == 1
               then putStrLn $ show $ sum' y x
               else putStrLn $ show $ sum' y (x+1)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n