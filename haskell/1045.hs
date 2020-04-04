
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1045

import Data.List

tipoTriangulo :: Double -> Double -> Double -> String
tipoTriangulo a b c = if a >= b+c
                       then "NAO FORMA TRIANGULO"
                       else if a*a == (b*b)+(c*c)
                             then "TRIANGULO RETANGULO"
                             else if a*a > (b*b)+(c*c)
                                   then "TRIANGULO OBTUSANGULO"
                                   else if a*a < (b*b)+(c*c)
                                         then "TRIANGULO ACUTANGULO"
                                         else ""
main :: IO ()
main = do input <- getLine
          let numbers = reverse $ sort (map read (words input) :: [Double])
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
              t = tipoTriangulo a b c
          putStrLn t
          if t == "" || t == "NAO FORMA TRIANGULO"
           then return ()
           else if a == b && b == c
                 then putStrLn "TRIANGULO EQUILATERO"
                 else if (a==b || a==c) || (b==a || b==c)
                       then putStrLn "TRIANGULO ISOSCELES"
                       else return ()