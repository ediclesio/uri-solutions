
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1222

import System.IO (isEOF)

contLines :: [Int] -> Int -> Int -> Int
contLines [] maxC c = 1
contLines (x:xs) maxC c | x+c+1 <= maxC = contLines xs maxC (x+c+1)
                        | otherwise = 1 + contLines xs maxC x

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Int]
                                n = numbers !! 0
                                l = numbers !! 1
                                c = numbers !! 2
                            str <- getLine
                            let arr = map length (words str)
                                lines = contLines (tail arr) c (head arr)
                                r = div lines l + if mod lines l == 0
                                                   then 0
                                                   else 1
                            putStrLn $ show r
                            main
                    else return ()