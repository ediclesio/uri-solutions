
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3084

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Int]
                                h = numbers !! 0
                                m = numbers !! 1
                                p1 = div h 30
                                p2 = div m 6
          
                            if p1 < 10
                             then putStr $ "0" ++ show p1 ++ ":"
                             else putStr $ show p1 ++ ":"

                            if p2 < 10
                             then putStrLn $ "0" ++ show p2
                             else putStrLn $ show p2
                   
                            main
                    else return ()