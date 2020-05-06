
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2547

import System.IO (isEOF)

repete :: Int -> Int -> Int -> Int -> IO Int
repete 0 _ _ s = return s
repete n aMin aMax s = do a <- readLn :: IO Int
                          if a >= aMin && a <= aMax
                           then repete (n-1) aMin aMax (s+1)
                           else repete (n-1) aMin aMax s

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do let numbers = map read (words input) :: [Int]
                                n = numbers !! 0
                                aMin = numbers !! 1
                                aMax = numbers !! 2
                            r <- repete n aMin aMax 0
                            putStrLn $ show r
                            main