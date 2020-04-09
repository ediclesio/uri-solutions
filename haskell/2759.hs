
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2759

main :: IO ()
main = do a <- getLine
          b <- getLine
          c <- getLine
          putStrLn $ "A = " ++ a ++ ", B = " ++ b ++ ", C = " ++ c
          putStrLn $ "A = " ++ b ++ ", B = " ++ c ++ ", C = " ++ a
          putStrLn $ "A = " ++ c ++ ", B = " ++ a ++ ", C = " ++ b