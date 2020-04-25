
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3004

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  x1 = numbers !! 0
                  x2 = numbers !! 1
                  y1 = numbers !! 2
                  y2 = numbers !! 3
              if max x1 x2 < max y1 y2 && min x1 x2 < min y1 y2
               then putStrLn "S"
               else putStrLn "N"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n