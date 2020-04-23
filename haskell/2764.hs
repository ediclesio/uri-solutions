
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2764

getNumbers :: String -> String -> [String]
getNumbers [] n = [n]
getNumbers (a:as) n | elem a ['0'..'9'] = getNumbers as (n++[a])
                    | otherwise = n:getNumbers as []

main :: IO ()
main = do str <- getLine
          let numbers = getNumbers str []
              d = numbers !! 0
              m = numbers !! 1
              a = numbers !! 2
          putStrLn (m ++ "/" ++ d ++ "/" ++ a)
          putStrLn (a ++ "/" ++ m ++ "/" ++ d)
          putStrLn (d ++ "-" ++ m ++ "-" ++ a)