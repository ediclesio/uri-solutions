
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1035

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              a = (numbers !! 0)
              b = (numbers !! 1)
              c = (numbers !! 2)
              d = (numbers !! 3)
          if b > c && d > a && (c+d) > (a+b) && c > 0 && d > 0 && (mod a 2) == 0
            then putStrLn $ "Valores aceitos"
            else putStrLn $ "Valores nao aceitos"