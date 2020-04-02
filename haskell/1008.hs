
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1008

import Text.Printf (printf)

main :: IO ()
main = do id <- readLn :: IO Int
          horas <- readLn :: IO Float
          salarioHora <- readLn :: IO Float
          printf "NUMBER = %d\n" id
          printf "SALARY = U$ %.2f\n" (horas * salarioHora)