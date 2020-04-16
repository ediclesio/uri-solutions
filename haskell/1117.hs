
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1117

import Text.Printf (printf)

repete :: Int -> Double -> IO ()
repete c m | c <= 1 = do x <- readLn :: IO Double
                         if x >= 0 && x <= 10
                          then repete (c+1) (m+x)
                          else do printf("nota invalida\n");
                                  repete c m
           | otherwise = printf "media = %.2f\n" (m/2)

main :: IO ()
main = repete 0 0