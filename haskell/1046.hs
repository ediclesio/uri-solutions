
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1046

calcDuracaoJogo :: Int -> Int -> Int
calcDuracaoJogo 0 0 = 24
calcDuracaoJogo h1 h2 | h2 > h1 = h2 - h1
                      | otherwise = (24 - h1) + h2

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              x = (numbers !! 0)
              y = (numbers !! 1)
          putStrLn $ "O JOGO DUROU " ++ show (calcDuracaoJogo x y) ++ " HORA(S)"