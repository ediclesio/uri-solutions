
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1247

import System.IO (isEOF)

main::IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Double]
                                d = numbers !! 0
                                vf = numbers !! 1
                                vg = numbers !! 2
                                dist = sqrt (144+d*d)
                                tf = 12/vf
                                tg = dist/vg
                            if tg <= tf
                             then putStrLn "S"
                             else putStrLn "N"
                            main
                    else return ()