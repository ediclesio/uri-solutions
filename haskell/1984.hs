
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1984

main::IO ()
main = do c <- readLn :: IO Integer
          putStrLn $ reverse (show c)