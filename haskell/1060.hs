
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1060

qtdPositivos :: [Double] -> Int -> IO ()
qtdPositivos [] s = putStrLn $ show s ++ " valores positivos"
qtdPositivos (n:ns) s = if n > 0
                         then qtdPositivos ns (s+1)
                         else qtdPositivos ns s

main :: IO ()
main = do v1 <- readLn :: IO Double
          v2 <- readLn :: IO Double
          v3 <- readLn :: IO Double
          v4 <- readLn :: IO Double
          v5 <- readLn :: IO Double
          v6 <- readLn :: IO Double
          let numbers = v1:v2:v3:v4:v5:v6:[]
          qtdPositivos numbers 0