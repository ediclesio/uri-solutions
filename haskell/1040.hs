
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1040

import Text.Printf (printf)

calcMediaParcial :: Float -> Float -> Float -> Float -> Float
calcMediaParcial n1 n2 n3 n4 = (2*n1 + 3*n2 + 4*n3 + 1*n4)/10

calcMediaFinal :: Float -> Float -> Float
calcMediaFinal mp af = (mp+af)/2

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Float]
              n1 = (numbers !! 0)
              n2 = (numbers !! 1)
              n3 = (numbers !! 2)
              n4 = (numbers !! 3)
              mp = calcMediaParcial n1 n2 n3 n4
          if mp >= 7
           then printf "Media: %.1f\nAluno aprovado.\n" mp
           else if mp < 5
                 then printf "Media: %.1f\nAluno reprovado.\n" mp
                 else if mp >= 5 && mp < 7
                       then do printf "Media: %.1f\nAluno em exame.\n" mp
                               af <- readLn :: IO Float
                               printf "Nota do exame: %.1f\n" af
                               let mf = calcMediaFinal mp af
                               if mf >= 5
                                then printf "Aluno aprovado.\n"
                                else printf "Aluno reprovado.\n"
                               printf "Media final: %.1f\n" mf
                        else return ()