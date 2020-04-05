
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1985

import Text.Printf (printf)

mostraResultado :: Double -> IO ()
mostraResultado r = printf "%.2f\n" r

repete :: Int -> Double -> IO ()
repete 0 s = mostraResultado s
repete t s = do input <- getLine
                let numbers = map read (words input) :: [Double]
                    p = numbers !! 0
                    q = numbers !! 1
                if p == 1001
                 then repete (t-1) (s+q*1.50)
                 else if p == 1002
                       then repete (t-1) (s+q*2.50)
                       else if p == 1003
                             then repete (t-1) (s+q*3.50)
                             else if p == 1004
                                   then repete (t-1) (s+q*4.50)
                                   else if p == 1005
                                         then repete (t-1) (s+q*5.50)
                                         else repete (t-1) s

main :: IO ()
main = do t <- readLn :: IO Int
          repete t (read "0" :: Double)