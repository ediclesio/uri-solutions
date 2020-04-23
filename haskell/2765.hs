
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2765

str :: String -> String
str [] = []
str (a:as) | a == ',' = '\n':str as
           | otherwise = a:str as

main :: IO ()
main = do input <- getLine
          putStrLn $ str input