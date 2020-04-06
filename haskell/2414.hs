
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2414

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              maior = maximum numbers
          putStrLn $ show maior