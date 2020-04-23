
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2760

main :: IO ()
main = do a <- getLine
          b <- getLine
          c <- getLine
          putStrLn (a++b++c)
          putStrLn (b++c++a)
          putStrLn (c++a++b)
          putStrLn (take 10 a ++ take 10 b ++ take 10 c)