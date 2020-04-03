
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1041

descobreQuadrante :: Float -> Float -> Int
descobreQuadrante x y | x == 0.0 && y == 0.0 = 0
                      | x == 0.0 = 5
                      | y == 0.0 = 6
                      | x > 0.0 && y > 0.0 = 1
                      | x < 0.0 && y > 0.0 = 2
                      | x < 0.0 && y < 0.0 = 3
                      | otherwise = 4

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Float]
              x = (numbers !! 0)
              y = (numbers !! 1)
          case (descobreQuadrante x y) of
              0 -> putStrLn "Origem"
              1 -> putStrLn $ "Q1"
              2 -> putStrLn $ "Q2"
              3 -> putStrLn $ "Q3"
              4 -> putStrLn $ "Q4"
              5 -> putStrLn $ "Eixo Y"
              6 -> putStrLn $ "Eixo X"