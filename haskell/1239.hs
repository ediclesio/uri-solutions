
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1239

import System.IO (isEOF)

mostra :: String -> Int -> Int -> IO ()
mostra [] _ _ = putStrLn ""
mostra (a:as) i b | a == '_' = if i == 0 
                                then do putStr "<i>"
                                        mostra as (i+1) b
                                else do putStr "</i>"
                                        mostra as (i-1) b
                  
                  | a == '*' = if b == 0
                                then do putStr "<b>"
                                        mostra as i (b+1)
                                else do putStr "</b>"
                                        mostra as i (b-1)
                  | otherwise = do putStr [a]
                                   mostra as i b

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str /= ""
                    then do mostra str 0 0
                            main
                    else return ()