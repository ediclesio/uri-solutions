
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3056

calc :: Int -> Integer -> Integer
calc 0 p = (p+1)^2
calc n p = calc (n-1) (2*p)

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then putStrLn "4"
           else if n > 0 && n <= 50
                 then putStrLn $ show (calc n 1)
                 else return ()