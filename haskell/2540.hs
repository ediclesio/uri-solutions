
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2540

import System.IO (isEOF)

toDouble :: Int -> Double
toDouble x = fromIntegral x

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   input <- getLine
                   if input /= ""
                    then do let votes = sum (map read (words input) :: [Int])
                            if toDouble votes >= toDouble n*(2/3)
                             then putStrLn "impeachment"
                             else putStrLn "acusacao arquivada"
                            main
                    else return ()