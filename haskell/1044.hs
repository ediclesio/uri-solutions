
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1044

main::IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              a = (numbers !! 0)
              b = (numbers !! 1)
          if mod a b == 0 || mod b a == 0
            then putStrLn $ "Sao Multiplos"
            else putStrLn $ "Nao sao Multiplos"