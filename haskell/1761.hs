
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1761

import Text.Printf (printf)
import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do let numbers = map read (words input) :: [Double]
                                a = numbers !! 0
                                b = numbers !! 1
                                c = numbers !! 2
                            printf "%.2f\n" (5*(tan (pi*(a/180))*b+c))
                            main