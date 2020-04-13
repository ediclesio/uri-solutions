
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2924

main :: IO ()
main = do a <- readLn :: IO Integer
          b <- readLn :: IO Integer
          if a >= 0 && b >= 0 && a+b <= 2^512
           then putStrLn $ show (a+b)
           else return ()