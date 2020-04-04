
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1064

import Text.Printf (printf)

positivosMedia :: [Double] -> Int -> Double -> IO ()
positivosMedia [] p s = printf "%d valores positivos\n%.1f\n" p (s/fromIntegral p)
positivosMedia (n:ns) p s = if n > 0
                             then positivosMedia ns (p+1) (s+n)
                             else positivosMedia ns p s

main :: IO ()
main = do v1 <- readLn :: IO Double
          v2 <- readLn :: IO Double
          v3 <- readLn :: IO Double
          v4 <- readLn :: IO Double
          v5 <- readLn :: IO Double
          v6 <- readLn :: IO Double
          let numbers = v1:v2:v3:v4:v5:v6:[]
          positivosMedia numbers 0 0