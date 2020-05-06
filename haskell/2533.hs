
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2533

import System.IO (isEOF)
import Text.Printf (printf)

repete :: Int -> Double -> Double -> IO ()
repete 0 sn sc = printf "%.4f\n" (sn/(sc*100))
repete m sn sc = do input <- getLine
                    let numbers = map read (words input) :: [Double]
                        n = numbers !! 0
                        c = numbers !! 1
                    repete (m-1) (sn+n*c) (sc+c)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do m <- readLn :: IO Int
                   repete m 0 0
                   main