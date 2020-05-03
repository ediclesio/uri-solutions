
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1620

import Text.Printf (printf)

main :: IO ()
main = do l <- readLn :: IO Double
          if l == 0
           then return ()
           else do let v = l+(l-3)
                   printf "%.6f\n" ((v-l)/l)
                   main