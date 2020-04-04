
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1010

import Text.Printf (printf)

calcInputs :: IO Double
calcInputs = do input <- getLine
                let numbers = map read (words input) :: [Double]
                    cod = numbers !! 0
                    num = numbers !! 1
                    val = numbers !! 2
                return (num*val)

main :: IO ()
main = do r1 <- calcInputs
          r2 <- calcInputs
          printf "VALOR A PAGAR: R$ %.2f\n" (r1 + r2)