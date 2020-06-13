
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3088

import System.IO (isEOF)

verifyBlanc :: String -> Bool
verifyBlanc [] = False
verifyBlanc (a:as) | a == ',' || a == '.' = True
                   | a == ' ' = verifyBlanc as
                   | otherwise = False

whileBlanc :: String -> String
whileBlanc [] = []
whileBlanc (a:as) | a == ' ' = a:whileBlanc as
                  | otherwise = []

getResult :: String -> String
getResult [] = []
getResult (a:as) | a == ' ' && verifyBlanc as = do let str = whileBlanc as
                                                   str ++ getResult (drop (length str) as)
                 | otherwise = a:getResult as

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do putStrLn $ getResult input
                            main
                    else return ()