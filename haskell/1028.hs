
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1028

calc :: Int -> Int -> IO ()
calc dividendo divisor | mod dividendo divisor == 0 = putStrLn $ show divisor
                       | otherwise = calc divisor (mod dividendo divisor)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  f1 = numbers !! 0
                  f2 = numbers !! 1
              if f2 > f1
               then calc f2 f1
               else calc f1 f2
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n