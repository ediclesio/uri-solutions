
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1159

sum' :: Int -> Int
sum' x = sum $ take 5 [x | x <- [x,x+2..]]

main :: IO ()
main = do x <- readLn :: IO Int
          if x == 0
           then return ()
           else do if mod x 2 == 0
                    then putStrLn $ show $ sum' x
                    else putStrLn $ show $ sum' (x+1)
                   main