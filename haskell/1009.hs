
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1009

import Text.Printf (printf)

main :: IO ()
main = do nome <- getLine
          salario <- readLn :: IO Double
          vendas <- readLn :: IO Double
          printf "TOTAL = R$ %.2f\n" (salario + (vendas * 0.15))