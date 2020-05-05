
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2176

calc :: String -> Int
calc [] = 0
calc (x:xs) | x == '1' = 1 + calc xs
            | otherwise = calc xs

main :: IO ()
main = do str <- getLine
          if mod (calc str) 2 == 0
           then putStrLn $ str ++ "0"
           else putStrLn $ str ++ "1"