
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2523

import System.IO (isEOF)

mostra :: [Int] -> String -> IO ()
mostra [] _ = putStrLn ""
mostra (x:xs) arr = do putStr [arr !! (x-1)]
                       mostra xs arr

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do alpha <- getLine
                   if alpha == ""
                    then return ()
                    else do n <- readLn :: IO Int
                            input <- getLine
                            let numbers = map read (words input) :: [Int]
                            mostra numbers alpha
                            main