
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1154

import Text.Printf (printf)

media :: Int -> Int -> Double
media x y = fromIntegral x / fromIntegral y

loop :: Int -> Int -> IO Double
loop c s = do age <- readLn :: IO Int
              if age >= 0
               then loop (c+1) (s+age)
               else return (media s c)

main :: IO ()
main = loop 0 0 >>= \r -> printf "%.2f\n" r