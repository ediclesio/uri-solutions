
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2757

import Text.Printf (printf)

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          c <- readLn :: IO Int
          printf "A = %d, B = %d, C = %d\n" a b c
          printf "A = %10d, B = %10d, C = %10d\n" a b c
          printf "A = %010d, B = %010d, C = %010d\n" a b c
          printf "A = %-10d, B = %-10d, C = %-10d\n" a b c