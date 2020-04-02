
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1036

import Text.Printf (printf)

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Double]
              a = (numbers !! 0)
              b = (numbers !! 1)
              c = (numbers !! 2)
              delta = (b^2)-(4*a*c)
          if delta >= 0 && a > 0
            then do let r1 = ((-b + sqrt delta)/(2*a))
                        r2 = ((-b - sqrt delta)/(2*a))
                    printf "R1 = %.5f\n" r1
                    printf "R2 = %.5f\n" r2
            else putStrLn $ "Impossivel calcular"