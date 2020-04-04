
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1079

import Text.Printf (printf)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let nums = map read (words input) :: [Float]
                  n1 = nums !! 0
                  n2 = nums !! 1
                  n3 = nums !! 2
              printf "%.1f\n" ((2*n1+3*n2+5*n3)/10)
              repete (n-1)

main :: IO ()
main = do num <- readLn :: IO Int
          repete num