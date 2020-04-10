
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2987

import Data.List

main :: IO ()
main = do userInput <- getLine
          let letras = ['A'..'Z']
              c = head userInput
          case elemIndex c letras of
            Just x -> putStrLn $ show (x+1)