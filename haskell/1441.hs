
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1441

calc :: Int -> Int -> Int
calc h m | h == 1 = m
         | otherwise = do let n = if mod h 2 == 0 then div h 2 else 3*h+1
                          if n > m
                           then calc n n
                           else calc n m

main :: IO ()
main = do h <- readLn :: IO Int
          if h == 0
           then return ()
           else do putStrLn $ show (calc h h)
                   main