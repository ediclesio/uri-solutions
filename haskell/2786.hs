
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2786

main :: IO ()
main = do l <- readLn :: IO Int
          c <- readLn :: IO Int
          putStrLn $ show ((l*c)+((l-1)*(c-1)))
          putStrLn $ show (((l-1)*2)+((c-1)*2))