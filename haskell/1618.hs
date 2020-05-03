
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1618

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  ax = numbers !! 0
                  ay = numbers !! 1
                  bx = numbers !! 2
                  by = numbers !! 3
                  cx = numbers !! 4
                  cy = numbers !! 5
                  dx = numbers !! 6
                  dy = numbers !! 7
                  rx = numbers !! 8
                  ry = numbers !! 9
              if rx >= ax && ry >= ay && rx <= cx && ry <= cy
               then putStrLn "1"
               else putStrLn "0"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n