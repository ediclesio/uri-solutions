
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1150

calc :: Int -> Int -> Int -> Int -> IO Int
calc x z s c | s < z = calc (x+1) z (s+x) (c+1)
             | otherwise = return c

input :: Int -> IO Int
input x = do n <- readLn :: IO Int
             if n > x then return n else input x

main :: IO ()
main = do x <- readLn :: IO Int
          z <- input x
          r <- calc x z 0 0
          putStrLn $ show r