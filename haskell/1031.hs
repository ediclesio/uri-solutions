
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1031

remaining :: Int -> Int -> Int -> Int -> Int
remaining n k r i | i < n = remaining n k (mod (r+k) i) (i+1)
                  | otherwise = r

repete :: Int -> Int -> Int
repete n y | remaining n y 0 1 /= 11 = repete n (y+1)
           | otherwise = y

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do putStrLn $ show (repete n 1)
                   main