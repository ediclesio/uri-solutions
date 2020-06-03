
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1300

import System.IO (isEOF)

repete :: Int -> Int -> Int -> Int
repete a i j | i < 60 = do let x = if mod i 5 == 0
                                    then j+1
                                    else j
                               angulo = 6*i - 6*x
                           if a == angulo || a == -angulo
                            then 1
                            else repete a (i+1) x
             
             | otherwise = 0

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do a <- readLn :: IO Int
                   if repete a 0 0 == 1
                    then putStrLn "Y"
                    else putStrLn "N"
                   main