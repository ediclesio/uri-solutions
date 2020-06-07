
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1069

cont :: String -> Int -> Int
cont [] _ = 0
cont (a:as) x | a == '<' = cont as (x+1)
              | a == '>' && x > 0 = 1 + cont as (x-1)
              | otherwise = cont as x

loop :: Int -> IO ()
loop 0 = return ()
loop n = do str <- getLine
            putStrLn $ show (cont str 0)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n