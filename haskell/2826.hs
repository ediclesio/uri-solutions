
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2826

main :: IO ()
main = do a <- getLine
          b <- getLine
          if a == b || a < b
           then do putStrLn a
                   putStrLn b
           else do putStrLn b
                   putStrLn a