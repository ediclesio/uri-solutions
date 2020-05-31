
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2175

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Double]
              o = numbers !! 0
              b = numbers !! 1
              i = numbers !! 2
          if o < b && o < i
           then putStrLn "Otavio"
           else if b < o && b < i
                 then putStrLn "Bruno"
                 else if i < o && i < b
                       then putStrLn "Ian"
                       else putStrLn "Empate"