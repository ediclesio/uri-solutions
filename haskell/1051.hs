
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1051

import Text.Printf (printf)

main :: IO ()
main = do salario <- readLn :: IO Float
          if salario <= 2000
            then putStrLn $ "Isento"
            else if salario <= 3000
                  then printf "R$ %.2f\n" ((salario - 2000.0)*0.08)
                  else if salario <= 4500
                        then printf "R$ %.2f\n" ((salario - 3000.0)*0.18 + (1000*0.08))
                        else printf "R$ %.2f\n" ((salario - 4500)*0.28 + (1500*0.18) + (1000*0.08))