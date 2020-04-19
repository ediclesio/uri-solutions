
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2803

norte = ["acre","amapa","amazonas","para","rondonia","roraima","tocantins"]

main :: IO ()
main = do str <- getLine
          if elem str norte
           then putStrLn "Regiao Norte"
           else putStrLn "Outra regiao"