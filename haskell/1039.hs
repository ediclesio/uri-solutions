
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1039

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do let numbers = map read (words input) :: [Double]
                                r1 = numbers !! 0
                                x1 = numbers !! 1
                                y1 = numbers !! 2
                                r2 = numbers !! 3
                                x2 = numbers !! 4
                                y2 = numbers !! 5
                                d = sqrt ((x2-x1)^2+(y2-y1)^2)
                            if r1 >= d + r2
                             then putStrLn "RICO"
                             else putStrLn "MORTO"
                            main