
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1069

contDiamonds :: String -> Int -> Int
contDiamonds [] _ = 0
contDiamonds (a:as) x | a == '<' = contDiamonds as (x+1)
                      | a == '>' && x > 0 = 1 + contDiamonds as (x-1)
                      | otherwise = contDiamonds as x

loop :: Int -> IO ()
loop 0 = return ()
loop n = do str <- getLine
            putStrLn $ show (contDiamonds str 0)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n