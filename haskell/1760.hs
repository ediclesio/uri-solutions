
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1760

import Text.Printf (printf)
import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do l <- readLn :: IO Double
                   let r = sqrt 3 / 4
                   printf "%.2f\n" (r*l*l*1.6)
                   main