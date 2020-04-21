
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2763

getNumbers :: String -> String -> [String]
getNumbers [] n = [n]
getNumbers (a:as) n | elem a ['0'..'9'] = getNumbers as (n++[a])
                    | otherwise = n:getNumbers as []

main :: IO ()
main = do str <- getLine
          let numbers = getNumbers str []
          putStrLn (numbers !! 0)
          putStrLn (numbers !! 1)
          putStrLn (numbers !! 2)
          putStrLn (numbers !! 3)