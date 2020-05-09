
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1120

getNumber :: String -> String
getNumber [] = "0"
getNumber (x:xs) | x == '0' = getNumber xs
                 | otherwise = x:xs

main :: IO ()
main = do input <- getLine
          if input == "0 0"
           then return ()
           else do let numbers = words input
                       d = head (numbers !! 0)
                       n = numbers !! 1
                   putStrLn (getNumber [x | x <- n, x /= d])
                   main