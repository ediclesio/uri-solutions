
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1558

import System.IO (isEOF)

toDouble :: Int -> Double
toDouble x = fromIntegral x

repete :: Int -> Int -> Int -> Bool -> Bool
repete n i j b | j >= i = do let s = i^2 + j^2
                             if s == n
                              then True
                              else if s < n
                                    then repete n (i+1) j b
                                    else repete n i (j-1) b
               
               | otherwise = b

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Int
                   let j = floor $ sqrt $ toDouble n
                   if repete n 0 j False
                    then putStrLn "YES"
                    else putStrLn "NO"
                   main