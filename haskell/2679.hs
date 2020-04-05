
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2679

main :: IO ()
main = do x <- readLn :: IO Integer
          if mod x 2 == 1
           then putStrLn $ show (succ x)
           else putStrLn $ show ((succ x)+1)