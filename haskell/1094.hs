
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1094

import Text.Printf (printf)

repete :: Int -> Int -> Int -> Int -> IO [Int]
repete 0 d e f = return (d:e:f:[])
repete n d e f = do input <- getLine
                    let str = words input
                        num = read (str !! 0) :: Int
                        t = (str !! 1) !! 0
                    if t == 'C'
                     then repete (n-1) (d+num) e f
                     else if t == 'R'
                           then repete (n-1) d (e+num) f
                           else repete (n-1) d e (f+num)

toDouble :: Int -> Double
toDouble x = fromIntegral x

main :: IO ()
main = do n <- readLn :: IO Int
          numbers <- repete n 0 0 0
          let d = toDouble (numbers !! 0)
              e = toDouble (numbers !! 1)
              f = toDouble (numbers !! 2)
              g = d + e + f
          printf "Total: %.0f cobaias\n" g
          printf "Total de coelhos: %.0f\n" d
          printf "Total de ratos: %.0f\n" e
          printf "Total de sapos: %.0f\n" f
          printf "Percentual de coelhos: %.2f %%\n" ((d/(g*1.0))*100.00)
          printf "Percentual de ratos: %.2f %%\n" ((e/(g*1.0))*100.00)
          printf "Percentual de sapos: %.2f %%\n" ((f/(g*1.0))*100.00)