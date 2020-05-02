
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1430

duracao :: Char -> Double
duracao c | c == 'W' = 1
          | c == 'H' = 1/2
          | c == 'Q' = 1/4
          | c == 'E' = 1/8
          | c == 'S' = 1/16
          | c == 'T' = 1/32
          | c == 'X' = 1/64

calc :: String -> Double
calc [] = 0
calc a = sum (map duracao a)

repete :: String -> String -> Int
repete [] _ = 0
repete (a:as) b | a == '/' = if calc b == 1 
                              then 1 + repete as []
                              else repete as []
                
                | otherwise = repete as (a:b)

main :: IO ()
main = do input <- getLine
          if input == "*"
           then return ()
           else do putStrLn $ show (repete input [])
                   main