
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2160

main :: IO ()
main = do str <- getLine
          if length str <= 80
            then putStrLn $ "YES"
            else putStrLn $ "NO"