
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1234

import Data.Char
import System.IO (isEOF)

mostra :: String -> Bool -> IO ()
mostra [] _ = putStrLn ""
mostra (a:as) lower | isLetter a && lower = do putStr ([toUpper a])
                                               mostra as False
                    | isLetter a = do putStr ([toLower a])
                                      mostra as True
                    | otherwise = do putStr [a]
                                     mostra as lower

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str /= ""
                    then do mostra str True
                            main
                    else return ()