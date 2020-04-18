
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1161

import System.IO (isEOF)

fat :: Integer -> Integer
fat 0 = 1
fat 1 = 1
fat n = fat (n-1) * n

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Integer]
                                m = numbers !! 0
                                n = numbers !! 1
                            putStrLn $ show (fat m + fat n)
                            main
                    else return ()