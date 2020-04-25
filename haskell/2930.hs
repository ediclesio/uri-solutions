
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2930

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              m = numbers !! 1
          if m -n >= 3
           then putStrLn "Muito bem! Apresenta antes do Natal!"
           else if m-n < 0
                 then putStrLn "Eu odeio a professora!"
                 else if m-n < 3
                       then do putStrLn "Parece o trabalho do meu filho!"
                               if m+2 <= 24
                                then putStrLn "TCC Apresentado!"
                                else putStrLn "Fail! Entao eh nataaaaal!"
                       else return ()