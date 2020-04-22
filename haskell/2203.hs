
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2203

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return () 
                    else do let numbers = map read (words input) :: [Double]
                                xf = numbers !! 0
                                yf = numbers !! 1
                                xi = numbers !! 2
                                yi = numbers !! 3
                                vi = numbers !! 4
                                r1 = numbers !! 5
                                r2 = numbers !! 6
                                d = ((xi-xf)^2+(yi-yf)**2)**0.5+1.5*vi
                            if d > r1+r2
                             then putStrLn "N"
                             else putStrLn "Y"
                            main